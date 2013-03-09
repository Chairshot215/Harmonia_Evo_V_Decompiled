.class public Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "HTCWimax4GConfigurationXmlParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTCWimax4GConfigurationXmlParser"


# instance fields
.field private configs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

.field private currentElement:Ljava/lang/Boolean;

.field private currentValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v1, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->configs:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentElement:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentElement:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentElement:Ljava/lang/Boolean;

    const-string v7, "id"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    iput v1, v7, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v7, ""

    iput-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    const-string v7, "HTCWimax4GConfigurationXmlParser"

    const-string v8, "parsing id error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :cond_1
    const-string v7, "priority"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    iput v5, v7, Lcom/htc/net/FourG/FourGConfiguration;->priority:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v7, "HTCWimax4GConfigurationXmlParser"

    const-string v8, "parsing priority error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :cond_2
    const-string v7, "status"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :try_start_2
    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const-string v7, "HTCWimax4GConfigurationXmlParser"

    const-string v8, "status incorrect"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "status incorrect"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    const-string v7, "HTCWimax4GConfigurationXmlParser"

    const-string v8, "parsing status error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    iput v6, v7, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :cond_4
    const-string v7, "nspId"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :try_start_4
    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->setNspId(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v7, "HTCWimax4GConfigurationXmlParser"

    const-string v8, "parsing nsp_id error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :cond_5
    const-string v7, "nspName"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    iget-object v8, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->setNspName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v7, "username"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    iget-object v8, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->setUsername(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v7, "needUsername"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_5
    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-virtual {v7, v3}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->setNetworkRequiresUsername(Z)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v7, "HTCWimax4GConfigurationXmlParser"

    const-string v8, "parsing needUsername error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :cond_8
    const-string v7, "password"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    iget-object v8, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v7, "needPassword"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :try_start_6
    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-virtual {v7, v2}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->setNetworkRequiresPassword(Z)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string v7, "HTCWimax4GConfigurationXmlParser"

    const-string v8, "parsing needPassword error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :cond_a
    const-string v7, "network"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->configs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->configs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentElement:Ljava/lang/Boolean;

    const-string v0, "config"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->configs:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->currentConfig:Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    goto :goto_0
.end method
