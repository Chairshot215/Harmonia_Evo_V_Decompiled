.class public Lcom/htc/home/personalize/PersonalizeCarouselProvider;
.super Lcom/htc/content/CarouselProvider;
.source "PersonalizeCarouselProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.htc.home.personalize.PersonalizeCarouselProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    .line 20
    const-string v0, "com.htc.home.personalize.PersonalizeCarouselProvider"

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeCarouselProvider;->setupCarousel(Ljava/lang/String;)V

    .line 21
    return-void
.end method
