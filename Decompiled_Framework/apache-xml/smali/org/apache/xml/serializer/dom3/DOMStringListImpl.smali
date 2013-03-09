.class final Lorg/apache/xml/serializer/dom3/DOMStringListImpl;
.super Ljava/lang/Object;
.source "DOMStringListImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMStringList;


# instance fields
.field private fStrings:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>(Ljava/util/Vector;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
