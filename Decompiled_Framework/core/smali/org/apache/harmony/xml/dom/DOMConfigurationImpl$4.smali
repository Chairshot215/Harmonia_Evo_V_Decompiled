.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$4;
.super Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;
.source "DOMConfigurationImpl.java"


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

    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .locals 1

    #getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$400(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$402(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    return-void
.end method
