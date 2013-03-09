.class public interface abstract Lorg/apache/http/impl/client/naf/AuthInfoResponseValidator;
.super Ljava/lang/Object;
.source "AuthInfoResponseValidator.java"


# virtual methods
.method public abstract validate(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;,
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation
.end method
