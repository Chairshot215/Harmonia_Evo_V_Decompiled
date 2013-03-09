.class public Lcom/htc/android/mail/MailCarousel;
.super Lcom/htc/content/CarouselProvider;
.source "MailCarousel.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.android.mail.MailCarousel"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    .line 13
    const-string v0, "com.htc.android.mail.MailCarousel"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailCarousel;->setupCarousel(Ljava/lang/String;)V

    .line 14
    return-void
.end method
