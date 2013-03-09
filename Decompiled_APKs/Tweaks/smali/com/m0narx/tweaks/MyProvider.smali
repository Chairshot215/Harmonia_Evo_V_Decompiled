.class public Lcom/m0narx/tweaks/MyProvider;
.super Lcom/htc/content/CarouselProvider;
.source "MyProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.m0narx.tweaks.MyProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    .line 26
    const-string v0, "com.m0narx.tweaks.MyProvider"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/MyProvider;->setupCarousel(Ljava/lang/String;)V

    .line 27
    return-void
.end method
