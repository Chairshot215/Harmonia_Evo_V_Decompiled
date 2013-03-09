.class public Lcom/android/mms/MmsCarouselProvider;
.super Lcom/htc/content/CarouselProvider;
.source "MmsCarouselProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.mms.MmsCarouselProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    .line 10
    const-string v0, "com.android.mms.MmsCarouselProvider"

    invoke-virtual {p0, v0}, Lcom/android/mms/MmsCarouselProvider;->setupCarousel(Ljava/lang/String;)V

    .line 11
    return-void
.end method
