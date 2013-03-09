.class public final Lcom/jme3/asset/AssetCache$SmartAssetInfo;
.super Ljava/lang/Object;
.source "AssetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/asset/AssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartAssetInfo"
.end annotation


# instance fields
.field public asset:Lcom/jme3/asset/Asset;

.field public smartKey:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jme3/asset/AssetKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
