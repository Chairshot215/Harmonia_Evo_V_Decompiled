.class public Lcom/htc/dcs/DCSHelper;
.super Ljava/lang/Object;
.source "DCSHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DCS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateElementFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lorg/kxml2/kdom/Element;
    .locals 4
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 72
    new-instance v0, Lorg/kxml2/kdom/Element;

    invoke-direct {v0}, Lorg/kxml2/kdom/Element;-><init>()V

    .line 73
    .local v0, element:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0, p1}, Lorg/kxml2/kdom/Element;->setName(Ljava/lang/String;)V

    .line 75
    const-string v2, ""

    .line 76
    .local v2, text:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, obj:Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    .line 83
    return-object v0

    .line 76
    .end local v1           #obj:Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static generateElementFromBundle(Landroid/os/Bundle;Ljava/lang/String;I)Lorg/kxml2/kdom/Element;
    .locals 3
    .parameter "bundle"
    .parameter "key"
    .parameter "arrayIndex"

    .prologue
    .line 94
    new-instance v0, Lorg/kxml2/kdom/Element;

    invoke-direct {v0}, Lorg/kxml2/kdom/Element;-><init>()V

    .line 95
    .local v0, element:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0, p1}, Lorg/kxml2/kdom/Element;->setName(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    .line 98
    return-object v0
.end method

.method public static generateXMLResult(ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 12
    .parameter "serviceStatus"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/kxml2/kdom/Element;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/kxml2/kdom/Element;>;"
    :try_start_0
    new-instance v0, Lorg/kxml2/kdom/Document;

    invoke-direct {v0}, Lorg/kxml2/kdom/Document;-><init>()V

    .line 28
    .local v0, doc:Lorg/kxml2/kdom/Document;
    new-instance v3, Lorg/kxml2/kdom/Element;

    invoke-direct {v3}, Lorg/kxml2/kdom/Element;-><init>()V

    .line 29
    .local v3, eRoot:Lorg/kxml2/kdom/Element;
    const-string v9, "DCSResult"

    invoke-virtual {v3, v9}, Lorg/kxml2/kdom/Element;->setName(Ljava/lang/String;)V

    .line 32
    new-instance v2, Lorg/kxml2/kdom/Element;

    invoke-direct {v2}, Lorg/kxml2/kdom/Element;-><init>()V

    .line 33
    .local v2, eDCSStatus:Lorg/kxml2/kdom/Element;
    const-string v9, "DCSstatus"

    invoke-virtual {v2, v9}, Lorg/kxml2/kdom/Element;->setName(Ljava/lang/String;)V

    .line 34
    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    .line 37
    const/4 v9, 0x2

    invoke-virtual {v3, v9, v2}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/kxml2/kdom/Element;

    .line 40
    .local v6, ret:Lorg/kxml2/kdom/Element;
    const/4 v9, 0x2

    invoke-virtual {v3, v9, v6}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v0           #doc:Lorg/kxml2/kdom/Document;
    .end local v2           #eDCSStatus:Lorg/kxml2/kdom/Element;
    .end local v3           #eRoot:Lorg/kxml2/kdom/Element;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #ret:Lorg/kxml2/kdom/Element;
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "DCS"

    const-string v10, "generateXMLResult Exception"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v5, 0x0

    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return-object v5

    .line 45
    .restart local v0       #doc:Lorg/kxml2/kdom/Document;
    .restart local v2       #eDCSStatus:Lorg/kxml2/kdom/Element;
    .restart local v3       #eRoot:Lorg/kxml2/kdom/Element;
    :cond_0
    const/4 v9, 0x2

    :try_start_1
    invoke-virtual {v0, v9, v3}, Lorg/kxml2/kdom/Document;->addChild(ILjava/lang/Object;)V

    .line 48
    new-instance v7, Lorg/kxml2/io/KXmlSerializer;

    invoke-direct {v7}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    .line 49
    .local v7, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 50
    .local v8, writer:Ljava/io/StringWriter;
    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 51
    invoke-virtual {v0, v7}, Lorg/kxml2/kdom/Document;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 53
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, outputXML:Ljava/lang/String;
    const-string v9, "DCS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "output xml : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
