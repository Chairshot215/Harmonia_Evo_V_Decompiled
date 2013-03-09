.class public interface abstract Lcom/google/android/finsky/appstate/InstallerDataStore;
.super Ljava/lang/Object;
.source "InstallerDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/InstallerDataStore$1;,
        Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;,
        Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
.end method

.method public abstract getAll()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
.end method

.method public abstract setAccount(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V
.end method

.method public abstract setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V
.end method

.method public abstract setDesiredVersion(Ljava/lang/String;I)V
.end method

.method public abstract setFirstDownloadMs(Ljava/lang/String;J)V
.end method

.method public abstract setFlags(Ljava/lang/String;I)V
.end method

.method public abstract setInstallerState(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setLastNotifiedVersion(Ljava/lang/String;I)V
.end method

.method public abstract setReferrer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;Ljava/lang/String;)V
.end method
