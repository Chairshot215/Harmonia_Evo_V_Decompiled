.class public Lgnu/kawa/xml/XmlNamespace;
.super Lgnu/mapping/Namespace;
.source "XmlNamespace.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final HTML:Lgnu/kawa/xml/XmlNamespace; = null

.field public static final HTML_BINDINGS:Lgnu/xml/NamespaceBinding; = null

.field public static final XHTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    const-string v0, "http://www.w3.org/1999/xhtml"

    const-string v1, ""

    invoke-static {v0, v1}, Lgnu/kawa/xml/XmlNamespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    .line 11
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/1999/xhtml"

    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, v1, v2, v3}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    sput-object v0, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    .line 48
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;
    .locals 5
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [xml] -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, xname:Ljava/lang/String;
    sget-object v3, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v3

    .line 20
    :try_start_0
    sget-object v4, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, old:Ljava/lang/Object;
    instance-of v4, v1, Lgnu/kawa/xml/XmlNamespace;

    if-eqz v4, :cond_0

    .line 22
    check-cast v1, Lgnu/kawa/xml/XmlNamespace;

    .end local v1           #old:Ljava/lang/Object;
    monitor-exit v3

    move-object v3, v1

    .line 27
    :goto_0
    return-object v3

    .line 23
    .restart local v1       #old:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lgnu/kawa/xml/XmlNamespace;

    invoke-direct {v0}, Lgnu/kawa/xml/XmlNamespace;-><init>()V

    .line 24
    .local v0, ns:Lgnu/kawa/xml/XmlNamespace;
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/kawa/xml/XmlNamespace;->setName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    .line 26
    sget-object v4, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v3

    move-object v3, v0

    goto :goto_0

    .line 28
    .end local v0           #ns:Lgnu/kawa/xml/XmlNamespace;
    .end local v1           #old:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;
    .locals 1
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 35
    invoke-static {p1, p0}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XmlNamespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/xml/ElementType;->make(Lgnu/mapping/Symbol;)Lgnu/kawa/xml/ElementType;

    move-result-object v0

    .line 53
    .local v0, type:Lgnu/kawa/xml/ElementType;
    sget-object v1, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    if-ne p0, v1, :cond_0

    .line 54
    sget-object v1, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/ElementType;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 55
    :cond_0
    return-object v0
.end method

.method public isConstant(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XmlNamespace;->setName(Ljava/lang/String;)V

    .line 73
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/kawa/xml/XmlNamespace;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, xname:Ljava/lang/String;
    sget-object v2, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Namespace;

    .line 80
    .local v0, ns:Lgnu/mapping/Namespace;
    instance-of v2, v0, Lgnu/kawa/xml/XmlNamespace;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 83
    :goto_0
    return-object v2

    .line 82
    :cond_0
    sget-object v2, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    .line 83
    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lgnu/kawa/xml/XmlNamespace;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
