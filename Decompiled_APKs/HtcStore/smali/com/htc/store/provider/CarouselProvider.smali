.class public Lcom/htc/store/provider/CarouselProvider;
.super Lcom/htc/content/CarouselProvider;
.source "CarouselProvider.java"


# static fields
.field public static final AUTHORITIES:Ljava/lang/String; = "com.htc.store.provider.CarouselProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    .line 8
    const-string v0, "com.htc.store.provider.CarouselProvider"

    invoke-virtual {p0, v0}, Lcom/htc/store/provider/CarouselProvider;->setupCarousel(Ljava/lang/String;)V

    .line 9
    return-void
.end method
