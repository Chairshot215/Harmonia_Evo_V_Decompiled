.class public interface abstract Lcom/android/providers/settings/flag/HtcLanguageFlags;
.super Ljava/lang/Object;
.source "HtcLanguageFlags.java"


# static fields
.field public static final isARA:Z

.field public static final isCHS:Z

.field public static final isPLS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcLanguageFlags;->isCHS:Z

    .line 17
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x19

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcLanguageFlags;->isARA:Z

    .line 20
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x21

    if-ne v0, v3, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/providers/settings/flag/HtcLanguageFlags;->isPLS:Z

    return-void

    :cond_0
    move v0, v2

    .line 13
    goto :goto_0

    :cond_1
    move v0, v2

    .line 17
    goto :goto_1

    :cond_2
    move v1, v2

    .line 20
    goto :goto_2
.end method
