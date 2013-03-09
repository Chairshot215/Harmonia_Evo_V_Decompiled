.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;
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

    if-nez v0, :cond_0

    #getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$200(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$000(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$600(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    #getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$100(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    #getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$700(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$402(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$202(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$002(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z
    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$602(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z
    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$102(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z
    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$702(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    :cond_0
    return-void
.end method
