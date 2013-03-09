.class public Lorg/apache/xalan/templates/OutputProperties;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "OutputProperties.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x60cd2713ce100890L


# instance fields
.field private m_properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "xml"

    invoke-direct {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-static {p1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-void
.end method

.method public static getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    invoke-static {p0}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public static getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;
    .locals 9

    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_4

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->reset()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v8, 0x7b

    if-ne v8, v1, :cond_3

    const/4 v3, 0x1

    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(C)V

    goto :goto_1

    :cond_3
    const/16 v8, 0x7d

    if-ne v8, v1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->reset()V

    :cond_5
    :goto_3
    return-object v7

    :cond_6
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public static getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/xml/utils/QName;
    .locals 2

    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLegalPropertyKey(Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x7b

    const/4 v0, 0x0

    const/16 v2, 0x7d

    const-string v1, "cdata-section-elements"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "doctype-public"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "doctype-system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "encoding"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "indent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "media-type"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "method"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "omit-xml-declaration"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "standalone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "version"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    iget-object v2, v0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Properties;

    iput-object v2, v0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public copyFrom(Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    return-void
.end method

.method public copyFrom(Ljava/util/Properties;Z)V
    .locals 8

    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v4, "method"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v4, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v4, "cdata-section-elements"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public copyFrom(Lorg/apache/xalan/templates/OutputProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    return-void
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v0

    return v0
.end method

.method public getBooleanProperty(Lorg/apache/xml/utils/QName;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIntProperty(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getIntProperty(Ljava/lang/String;Ljava/util/Properties;)I

    move-result v0

    return v0
.end method

.method public getIntProperty(Lorg/apache/xml/utils/QName;)I
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "{http://xml.apache.org/xslt}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{http://xml.apache.org/xalan}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Lorg/apache/xml/utils/QName;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getQNameProperties(Lorg/apache/xml/utils/QName;)Ljava/util/Vector;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getQNameProperty(Ljava/lang/String;)Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/xml/utils/QName;

    move-result-object v0

    return-object v0
.end method

.method public getQNameProperty(Lorg/apache/xml/utils/QName;)Lorg/apache/xml/utils/QName;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v0

    return-object v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeOutput(Lorg/apache/xalan/templates/OutputProperties;)V

    return-void
.end method

.method public setBooleanProperty(Ljava/lang/String;Z)V
    .locals 2

    iget-object v1, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    if-eqz p2, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public setBooleanProperty(Lorg/apache/xml/utils/QName;Z)V
    .locals 3

    iget-object v1, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public setIntProperty(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIntProperty(Lorg/apache/xml/utils/QName;I)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setIntProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public setMethodDefaults(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    const-string v4, "method"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "xml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v3, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    :cond_0
    const-string v0, "{http://xml.apache.org/xslt}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{http://xml.apache.org/xalan}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 6

    const/16 v4, 0x9

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, v4, v4}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/QName;

    invoke-virtual {v2}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(C)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setQNameProperties(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    return-void
.end method

.method public setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V
    .locals 1

    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setQNameProperty(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V

    return-void
.end method
