.class public Lcom/htc/opensense/cache/CacheManager$Info;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public status:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    return-void
.end method
