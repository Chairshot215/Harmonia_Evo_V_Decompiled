.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;
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

    #getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$200(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$202(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$302(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$202(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    goto :goto_0
.end method
