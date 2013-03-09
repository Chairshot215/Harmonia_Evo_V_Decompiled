.class public abstract Lorg/apache/xml/dtm/DTMManager;
.super Ljava/lang/Object;
.source "DTMManager.java"


# static fields
.field public static final IDENT_DTM_DEFAULT:I = -0x10000

.field public static final IDENT_DTM_NODE_BITS:I = 0x10

.field public static final IDENT_MAX_DTMS:I = 0x10000

.field public static final IDENT_NODE_DEFAULT:I = 0xffff

.field private static debug:Z = false

.field private static defaultClassName:Ljava/lang/String; = null

.field private static final defaultPropName:Ljava/lang/String; = "org.apache.xml.dtm.DTMManager"


# instance fields
.field public m_incremental:Z

.field public m_source_location:Z

.field protected m_xsf:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.xml.dtm.ref.DTMManagerDefault"

    sput-object v0, Lorg/apache/xml/dtm/DTMManager;->defaultClassName:Ljava/lang/String;

    :try_start_0
    const-string v0, "dtm.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/xml/dtm/DTMManager;->debug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    iput-boolean v1, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    iput-boolean v1, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    return-void
.end method

.method public static newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/DTMConfigurationException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "org.apache.xml.dtm.DTMManager"

    sget-object v3, Lorg/apache/xml/dtm/DTMManager;->defaultClassName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/xml/dtm/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMManager;
    :try_end_0
    .catch Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    new-instance v2, Lorg/apache/xml/dtm/DTMConfigurationException;

    const-string v3, "ER_NO_DEFAULT_IMPL"

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xml/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    new-instance v2, Lorg/apache/xml/dtm/DTMConfigurationException;

    const-string v3, "ER_NO_DEFAULT_IMPL"

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/xml/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/DTMManager;->setXMLStringFactory(Lorg/apache/xml/utils/XMLStringFactory;)V

    return-object v1
.end method


# virtual methods
.method public abstract createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDocumentFragment()Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTM(I)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
.end method

.method public abstract getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
.end method

.method public getDTMIdentityMask()I
    .locals 1

    const/high16 v0, -0x1

    return v0
.end method

.method public getIncremental()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    return v0
.end method

.method public getNodeIdentityMask()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public getSource_location()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    return v0
.end method

.method public getXMLStringFactory()Lorg/apache/xml/utils/XMLStringFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    return-object v0
.end method

.method public abstract release(Lorg/apache/xml/dtm/DTM;Z)Z
.end method

.method public setIncremental(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    return-void
.end method

.method public setSource_location(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    return-void
.end method

.method public setXMLStringFactory(Lorg/apache/xml/utils/XMLStringFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    return-void
.end method
