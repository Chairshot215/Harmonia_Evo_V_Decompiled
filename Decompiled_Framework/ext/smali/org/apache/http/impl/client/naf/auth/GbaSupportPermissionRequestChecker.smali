.class public interface abstract Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;
.super Ljava/lang/Object;
.source "GbaSupportPermissionRequestChecker.java"


# static fields
.field public static final GBA_SERVICE_USAGE_PERMISSION_NAME:Ljava/lang/String; = "javax.microedition.gba.USE_GBA_SERVICE"


# virtual methods
.method public abstract isCurrentProcessAllowedToUseGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
.end method

.method public abstract isCurrentProcessHasTheSameSignaturesAsGbaService(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
.end method

.method public abstract isCurrentProcessRequestedGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
.end method

.method public abstract isCurrentProcessSystemsOne(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
.end method
