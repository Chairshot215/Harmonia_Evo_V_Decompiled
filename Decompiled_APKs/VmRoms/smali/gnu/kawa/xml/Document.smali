.class public Lgnu/kawa/xml/Document;
.super Ljava/lang/Object;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/xml/Document$DocReference;
    }
.end annotation


# static fields
.field private static cache:Ljava/util/HashMap;

.field private static docMapLocation:Lgnu/mapping/ThreadLocation;

.field public static final document:Lgnu/kawa/xml/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lgnu/kawa/xml/Document;

    invoke-direct {v0}, Lgnu/kawa/xml/Document;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->document:Lgnu/kawa/xml/Document;

    .line 39
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "document-map"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static clearLocalCache()V
    .locals 2

    .prologue
    .line 61
    sget-object v1, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v1}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 62
    .local v0, loc:Lgnu/mapping/Location;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static clearSoftCache()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method public static parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    .line 35
    .local v0, tree:Lgnu/xml/NodeTree;
    invoke-static {p0, v0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 36
    new-instance v1, Lgnu/kawa/xml/KDocument;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lgnu/kawa/xml/KDocument;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v1
.end method

.method public static parse(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 4
    .parameter "name"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v1, Lgnu/text/SourceMessages;

    invoke-direct {v1}, Lgnu/text/SourceMessages;-><init>()V

    .line 22
    .local v1, messages:Lgnu/text/SourceMessages;
    instance-of v2, p1, Lgnu/lists/XConsumer;

    if-eqz v2, :cond_0

    .line 23
    move-object v0, p1

    check-cast v0, Lgnu/lists/XConsumer;

    move-object v2, v0

    invoke-interface {v2, p0}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 24
    :cond_0
    invoke-static {p0, v1, p1}, Lgnu/xml/XMLParser;->parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 25
    invoke-virtual {v1}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    new-instance v2, Lgnu/text/SyntaxException;

    const-string v3, "document function read invalid XML"

    invoke-direct {v2, v3, v1}, Lgnu/text/SyntaxException;-><init>(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    throw v2

    .line 28
    :cond_1
    instance-of v2, p1, Lgnu/lists/XConsumer;

    if-eqz v2, :cond_2

    .line 29
    check-cast p1, Lgnu/lists/XConsumer;

    .end local p1
    invoke-interface {p1}, Lgnu/lists/XConsumer;->endEntity()V

    .line 30
    :cond_2
    return-void
.end method

.method public static declared-synchronized parseCached(Lgnu/text/Path;)Lgnu/kawa/xml/KDocument;
    .locals 9
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    const-class v6, Lgnu/kawa/xml/Document;

    monitor-enter v6

    :goto_0
    :try_start_0
    sget-object v7, Lgnu/kawa/xml/Document$DocReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    check-cast v4, Lgnu/kawa/xml/Document$DocReference;

    .line 86
    .local v4, oldref:Lgnu/kawa/xml/Document$DocReference;
    if-nez v4, :cond_1

    .line 91
    sget-object v7, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v7}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v2

    .line 92
    .local v2, loc:Lgnu/mapping/Location;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 93
    .local v3, map:Ljava/util/Hashtable;
    if-nez v3, :cond_0

    .line 95
    new-instance v3, Ljava/util/Hashtable;

    .end local v3           #map:Ljava/util/Hashtable;
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 96
    .restart local v3       #map:Ljava/util/Hashtable;
    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/xml/KDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .local v0, doc:Lgnu/kawa/xml/KDocument;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 120
    .end local v0           #doc:Lgnu/kawa/xml/KDocument;
    .local v1, doc:Lgnu/kawa/xml/KDocument;
    :goto_1
    monitor-exit v6

    return-object v1

    .line 88
    .end local v1           #doc:Lgnu/kawa/xml/KDocument;
    .end local v2           #loc:Lgnu/mapping/Location;
    .end local v3           #map:Ljava/util/Hashtable;
    :cond_1
    :try_start_1
    sget-object v7, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    iget-object v8, v4, Lgnu/kawa/xml/Document$DocReference;->key:Lgnu/text/Path;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v4           #oldref:Lgnu/kawa/xml/Document$DocReference;
    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    .line 102
    .restart local v0       #doc:Lgnu/kawa/xml/KDocument;
    .restart local v2       #loc:Lgnu/mapping/Location;
    .restart local v3       #map:Ljava/util/Hashtable;
    .restart local v4       #oldref:Lgnu/kawa/xml/Document$DocReference;
    :cond_2
    :try_start_2
    sget-object v7, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/kawa/xml/Document$DocReference;

    .line 103
    .local v5, ref:Lgnu/kawa/xml/Document$DocReference;
    if-eqz v5, :cond_3

    .line 105
    invoke-virtual {v5}, Lgnu/kawa/xml/Document$DocReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #doc:Lgnu/kawa/xml/KDocument;
    check-cast v0, Lgnu/kawa/xml/KDocument;

    .line 106
    .restart local v0       #doc:Lgnu/kawa/xml/KDocument;
    if-nez v0, :cond_4

    .line 107
    sget-object v7, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_3
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v0

    .line 116
    invoke-virtual {v3, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v7, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    new-instance v8, Lgnu/kawa/xml/Document$DocReference;

    invoke-direct {v8, p0, v0}, Lgnu/kawa/xml/Document$DocReference;-><init>(Lgnu/text/Path;Lgnu/kawa/xml/KDocument;)V

    invoke-virtual {v7, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 120
    .end local v0           #doc:Lgnu/kawa/xml/KDocument;
    .restart local v1       #doc:Lgnu/kawa/xml/KDocument;
    goto :goto_1

    .line 110
    .end local v1           #doc:Lgnu/kawa/xml/KDocument;
    .restart local v0       #doc:Lgnu/kawa/xml/KDocument;
    :cond_4
    invoke-virtual {v3, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 111
    .end local v0           #doc:Lgnu/kawa/xml/KDocument;
    .restart local v1       #doc:Lgnu/kawa/xml/KDocument;
    goto :goto_1
.end method

.method public static parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/xml/Document;->parseCached(Lgnu/text/Path;)Lgnu/kawa/xml/KDocument;

    move-result-object v0

    return-object v0
.end method
