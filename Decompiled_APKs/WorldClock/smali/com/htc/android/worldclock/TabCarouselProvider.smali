.class public Lcom/htc/android/worldclock/TabCarouselProvider;
.super Lcom/htc/content/CarouselProvider;
.source "TabCarouselProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.htc.android.worldclock.TabCarouselProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    .line 12
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 13
    const-string v0, "com.htc.android.worldclock.TabCarouselProvider"

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/TabCarouselProvider;->setupCarousel(Ljava/lang/String;)V

    .line 14
    return-void
.end method
