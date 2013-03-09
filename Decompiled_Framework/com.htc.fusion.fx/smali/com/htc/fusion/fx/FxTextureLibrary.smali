.class public Lcom/htc/fusion/fx/FxTextureLibrary;
.super Ljava/lang/Object;
.source "FxTextureLibrary.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mode10fx"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addLibrariesFromAPK([Ljava/lang/String;[Ljava/lang/String;[I)Z
.end method

.method public static native addLibraryFromAPK(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static native addLibraryFromFile(Ljava/lang/String;I)Z
.end method
