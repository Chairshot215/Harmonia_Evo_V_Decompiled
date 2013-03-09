.class public interface abstract Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;
.super Ljava/lang/Object;
.source "AkaDigestCalculator.java"


# virtual methods
.method public abstract calculateRequestDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation
.end method

.method public abstract calculateResponseDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation
.end method
