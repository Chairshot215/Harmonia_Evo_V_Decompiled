.class public final Lcom/google/android/partnersetup/RlzProtocol$PingInfo;
.super Ljava/lang/Object;
.source "RlzProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;,
        Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getResourceIdForEvent(Ljava/lang/String;)I
    .locals 1
    .parameter "eventType"

    .prologue
    .line 353
    const-string v0, "I"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const v0, 0x7f03002d

    .line 358
    :goto_0
    return v0

    .line 355
    :cond_0
    const-string v0, "F"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const v0, 0x7f03002e

    goto :goto_0

    .line 358
    :cond_1
    const v0, 0x7f030003

    goto :goto_0
.end method

.method public static final rlzStatusOfChar(Ljava/lang/String;)I
    .locals 2
    .parameter "eventType"

    .prologue
    const/4 v0, 0x0

    .line 366
    const-string v1, "I"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 368
    :cond_1
    const-string v1, "F"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    const/4 v0, 0x1

    goto :goto_0
.end method
