.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$9;
.super Ljava/lang/Object;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSet(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .locals 1

    #getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaType:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$900(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaType:Ljava/lang/String;
    invoke-static {p1, p2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$902(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
