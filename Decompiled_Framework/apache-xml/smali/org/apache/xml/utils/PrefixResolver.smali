.class public interface abstract Lorg/apache/xml/utils/PrefixResolver;
.super Ljava/lang/Object;
.source "PrefixResolver.java"


# virtual methods
.method public abstract getBaseIdentifier()Ljava/lang/String;
.end method

.method public abstract getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
.end method

.method public abstract handlesNullPrefixes()Z
.end method
