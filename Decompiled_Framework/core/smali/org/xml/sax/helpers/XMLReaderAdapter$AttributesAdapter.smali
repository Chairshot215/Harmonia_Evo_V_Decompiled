.class final Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;
.super Ljava/lang/Object;
.source "XMLReaderAdapter.java"

# interfaces
.implements Lorg/xml/sax/AttributeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xml/sax/helpers/XMLReaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttributesAdapter"
.end annotation


# instance fields
.field private attributes:Lorg/xml/sax/Attributes;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    return-void
.end method
