.class public Lcom/google/android/common/GoogleTrafficStats;
.super Ljava/lang/Object;
.source "GoogleTrafficStats.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDomainType(Ljava/lang/String;)I
    .locals 1
    .parameter "accountName"

    .prologue
    .line 33
    const-string v0, "google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/high16 v0, 0x3000

    .line 39
    :goto_0
    return v0

    .line 35
    :cond_0
    const-string v0, "gmail.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "googlemail.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    const/high16 v0, 0x1000

    goto :goto_0

    .line 39
    :cond_2
    const/high16 v0, 0x2000

    goto :goto_0
.end method
