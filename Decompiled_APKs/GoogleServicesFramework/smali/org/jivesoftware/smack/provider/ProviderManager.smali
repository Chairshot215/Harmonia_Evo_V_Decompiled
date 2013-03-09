.class public Lorg/jivesoftware/smack/provider/ProviderManager;
.super Ljava/lang/Object;
.source "ProviderManager.java"


# static fields
.field private static sInstance:Lorg/jivesoftware/smack/provider/ProviderManager;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private extensionProviders:Ljava/util/Map;

.field private iqProviders:Ljava/util/Map;

.field private rawXmlExtensionProviders:Ljava/util/Map;

.field private rawXmlIqProviders:Ljava/util/Map;

.field private tagProtoBufMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/io/protocol/ProtoBufType;",
            ">;"
        }
    .end annotation
.end field

.field private tagQNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/provider/ProviderManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagProtoBufMap:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->rawXmlExtensionProviders:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->rawXmlIqProviders:Ljava/util/Map;

    .line 152
    return-void
.end method

.method public static createNewInstance()Lorg/jivesoftware/smack/provider/ProviderManager;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lorg/jivesoftware/smack/provider/ProviderManager;

    invoke-direct {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;-><init>()V

    return-object v0
.end method

.method public static getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;
    .locals 2

    .prologue
    .line 155
    sget-object v1, Lorg/jivesoftware/smack/provider/ProviderManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/provider/ProviderManager;->sInstance:Lorg/jivesoftware/smack/provider/ProviderManager;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lorg/jivesoftware/smack/provider/ProviderManager;

    invoke-direct {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/provider/ProviderManager;->sInstance:Lorg/jivesoftware/smack/provider/ProviderManager;

    .line 160
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/provider/ProviderManager;->sInstance:Lorg/jivesoftware/smack/provider/ProviderManager;

    monitor-exit v1

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 473
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/><"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 240
    const-string v0, "Smack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ProviderMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public static setDefault(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 2
    .parameter "providerMgr"

    .prologue
    .line 169
    sget-object v1, Lorg/jivesoftware/smack/provider/ProviderManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    sput-object p0, Lorg/jivesoftware/smack/provider/ProviderManager;->sInstance:Lorg/jivesoftware/smack/provider/ProviderManager;

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/PacketExtensionProvider;)V
    .locals 5
    .parameter "elementName"
    .parameter "namespace"
    .parameter "provider"

    .prologue
    .line 416
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-interface {p3}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->getTag()I

    move-result v1

    .line 420
    .local v1, tag:I
    if-nez v1, :cond_0

    .line 428
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already in use."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v2, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagProtoBufMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V
    .locals 5
    .parameter "elementName"
    .parameter "namespace"
    .parameter "provider"

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-interface {p3}, Lorg/jivesoftware/smack/provider/IQProvider;->getTag()I

    move-result v1

    .line 306
    .local v1, tag:I
    if-nez v1, :cond_0

    .line 314
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already in use."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v2, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagProtoBufMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3}, Lorg/jivesoftware/smack/provider/IQProvider;->getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addRawXmlExtensionProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/PacketExtensionProvider;)V
    .locals 2
    .parameter "elementName"
    .parameter "namespace"
    .parameter "provider"

    .prologue
    .line 353
    iget-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->rawXmlExtensionProviders:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method public addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V
    .locals 2
    .parameter "elementName"
    .parameter "namespace"
    .parameter "provider"

    .prologue
    .line 338
    iget-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->rawXmlIqProviders:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void
.end method

.method public getExtensionProvider(I)Ljava/lang/Object;
    .locals 3
    .parameter "tag"

    .prologue
    .line 397
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 401
    .end local v0           #key:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getIQProvider(I)Ljava/lang/Object;
    .locals 3
    .parameter "tag"

    .prologue
    .line 276
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 280
    .end local v0           #key:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRawXmlExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 362
    iget-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->rawXmlExtensionProviders:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 347
    iget-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->rawXmlIqProviders:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initializeBuiltInProviders()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#items"

    new-instance v2, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 180
    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#info"

    new-instance v2, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 185
    const-string v0, "vCard"

    const-string v1, "vcard-temp"

    new-instance v2, Lorg/jivesoftware/smackx/provider/SimpleVCardProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/SimpleVCardProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 190
    const-string v0, "x"

    const-string v1, "http://jabber.org/protocol/muc#user"

    new-instance v2, Lorg/jivesoftware/smackx/provider/MUCUserProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/PacketExtensionProvider;)V

    .line 199
    const-string v0, "stanza-ack"

    const-string v1, "android:iq:rmq"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/RmqAckProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAckProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 200
    const-string v0, "last-stanza"

    const-string v1, "android:iq:rmq"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceivedProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceivedProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 202
    const-string v0, "selective-ack"

    const-string v1, "google:mobile:rmq2"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAckProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAckProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 203
    const-string v0, "stream-ack"

    const-string v1, "google:mobile:rmq2"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/StreamAckProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/StreamAckProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 204
    const-string v0, "read"

    const-string v1, "google:mobile:chat"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/ChatReadProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/ChatReadProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 205
    const-string v0, "closed"

    const-string v1, "google:mobile:chat"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosedProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosedProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 206
    const-string v0, "query"

    const-string v1, "google:shared-status"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 207
    const-string v0, "query"

    const-string v1, "google:nosave"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQueryProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQueryProvider;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 208
    return-void
.end method

.method public removeBuiltInProviders()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#items"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#info"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "vCard"

    const-string v1, "vcard-temp"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "x"

    const-string v1, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeExtensionProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "stanza-ack"

    const-string v1, "android:iq:rmq"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "last-stanza"

    const-string v1, "android:iq:rmq"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "selective-ack"

    const-string v1, "google:mobile:rmq2"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "stream-ack"

    const-string v1, "google:mobile:rmq2"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "read"

    const-string v1, "google:mobile:chat"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "closed"

    const-string v1, "google:mobile:chat"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "query"

    const-string v1, "google:shared-status"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "query"

    const-string v1, "google:nosave"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public removeExtensionProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->extensionProviders:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    .line 443
    .local v1, provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    if-eqz v1, :cond_0

    .line 444
    invoke-interface {v1}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->getTag()I

    move-result v2

    .line 445
    .local v2, tag:I
    if-nez v2, :cond_1

    .line 452
    .end local v2           #tag:I
    :cond_0
    :goto_0
    return-void

    .line 449
    .restart local v2       #tag:I
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v3, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagProtoBufMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeIQProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    .line 325
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getProviderKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->iqProviders:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/provider/IQProvider;

    .line 328
    .local v1, provider:Lorg/jivesoftware/smack/provider/IQProvider;
    if-eqz v1, :cond_0

    .line 329
    invoke-interface {v1}, Lorg/jivesoftware/smack/provider/IQProvider;->getTag()I

    move-result v2

    .line 330
    .local v2, tag:I
    iget-object v3, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagQNameMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v3, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->tagProtoBufMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .end local v2           #tag:I
    :cond_0
    return-void
.end method

.method public removeRawXmlIqProviders()V
    .locals 1

    .prologue
    .line 342
    const-string v0, "removeRawXmlIqProviders"

    invoke-static {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->logv(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lorg/jivesoftware/smack/provider/ProviderManager;->rawXmlIqProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 344
    return-void
.end method
