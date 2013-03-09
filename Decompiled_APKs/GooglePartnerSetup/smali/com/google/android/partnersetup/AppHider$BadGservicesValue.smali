.class Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
.super Ljava/lang/Exception;
.source "AppHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/AppHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BadGservicesValue"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;)V

    return-void
.end method
