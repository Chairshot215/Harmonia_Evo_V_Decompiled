.class public interface abstract Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;
.super Ljava/lang/Object;
.source "CipherSuiteMapper.java"


# virtual methods
.method public abstract getCipherSuiteCodeByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;
.end method

.method public abstract getEnabledAndroidCipherSuitesAfterFiltering([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getUaSecurityProtocolId4Http()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
.end method

.method public abstract getUaSecurityProtocolIdByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
.end method
