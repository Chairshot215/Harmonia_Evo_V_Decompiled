.class public interface abstract Lcom/google/android/finsky/appstate/PackageStateRepository;
.super Ljava/lang/Object;
.source "PackageStateRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    }
.end annotation


# virtual methods
.method public abstract canLaunch(Ljava/lang/String;)Z
.end method

.method public abstract get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
.end method

.method public abstract getAllBlocking()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersionName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract invalidate(Ljava/lang/String;)V
.end method
