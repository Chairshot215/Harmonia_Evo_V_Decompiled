.class public interface abstract Lcom/google/android/apps/uploader/googlemobile/common/io/ConnectionFactory;
.super Ljava/lang/Object;


# static fields
.field public static final NETWORK_IS_AVAILABLE:I = 0x1

.field public static final NETWORK_MAY_BE_AVAILABLE:I = 0x2

.field public static final NETWORK_NOT_AVAILABLE:I


# virtual methods
.method public abstract getNetworkWorked()Z
.end method

.method public abstract getNetworkWorkedThisSession()Z
.end method

.method public abstract isNetworkAvailable()I
.end method

.method public abstract notifyFailure()V
.end method

.method public abstract registerNetworkSuccess(Z)Z
.end method

.method public abstract resetNetworkSettings()V
.end method

.method public abstract usingMDS()Z
.end method
