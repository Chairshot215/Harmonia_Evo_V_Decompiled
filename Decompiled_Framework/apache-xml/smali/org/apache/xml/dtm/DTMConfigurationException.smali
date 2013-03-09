.class public Lorg/apache/xml/dtm/DTMConfigurationException;
.super Lorg/apache/xml/dtm/DTMException;
.source "DTMConfigurationException.java"


# static fields
.field static final serialVersionUID:J = -0x3ff2750fa5b3bd7eL


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Configuration Error"

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
