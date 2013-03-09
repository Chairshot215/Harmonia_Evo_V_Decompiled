.class public interface abstract Lorg/apache/xalan/transformer/TransformState;
.super Ljava/lang/Object;
.source "TransformState.java"

# interfaces
.implements Lorg/apache/xml/serializer/TransformStateSetter;


# virtual methods
.method public abstract getContextNodeList()Lorg/w3c/dom/traversal/NodeIterator;
.end method

.method public abstract getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
.end method

.method public abstract getCurrentNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
.end method

.method public abstract getMatchedNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
.end method

.method public abstract getTransformer()Ljavax/xml/transform/Transformer;
.end method
