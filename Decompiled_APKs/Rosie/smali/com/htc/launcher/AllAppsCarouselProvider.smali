.class public Lcom/htc/launcher/AllAppsCarouselProvider;
.super Lcom/htc/content/CarouselProvider;
.source "AllAppsCarouselProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.htc.launcher.AllAppsCarouselProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    .line 20
    const-string v0, "com.htc.launcher.AllAppsCarouselProvider"

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsCarouselProvider;->setupCarousel(Ljava/lang/String;)V

    .line 22
    return-void
.end method
