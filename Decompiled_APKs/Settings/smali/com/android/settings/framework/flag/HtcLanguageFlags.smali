.class public interface abstract Lcom/android/settings/framework/flag/HtcLanguageFlags;
.super Ljava/lang/Object;
.source "HtcLanguageFlags.java"


# static fields
.field public static final CURRENT_LANGUAGE_FLAG:S

.field public static final isARA:Z

.field public static final isCHS:Z

.field public static final isCHT:Z

.field public static final isFR:Z

.field public static final isJAP:Z

.field public static final isPLS:Z

.field public static final isTR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_LANGUAGE_flag()S

    move-result v0

    sput-short v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->CURRENT_LANGUAGE_FLAG:S

    .line 74
    sget-short v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->CURRENT_LANGUAGE_FLAG:S

    const/16 v3, 0x19

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->isARA:Z

    .line 78
    sget-short v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->CURRENT_LANGUAGE_FLAG:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->isCHS:Z

    .line 82
    sget-short v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->CURRENT_LANGUAGE_FLAG:S

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->isCHT:Z

    .line 90
    sget-short v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->CURRENT_LANGUAGE_FLAG:S

    const/16 v3, 0xb

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->isFR:Z

    .line 94
    sget-short v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->CURRENT_LANGUAGE_FLAG:S

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->isJAP:Z

    .line 97
    sget-short v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->CURRENT_LANGUAGE_FLAG:S

    const/16 v3, 0x21

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->isPLS:Z

    .line 101
    sget-short v0, Lcom/android/settings/framework/flag/HtcLanguageFlags;->CURRENT_LANGUAGE_FLAG:S

    const/16 v3, 0x12

    if-ne v0, v3, :cond_6

    :goto_6
    sput-boolean v1, Lcom/android/settings/framework/flag/HtcLanguageFlags;->isTR:Z

    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v0, v2

    .line 78
    goto :goto_1

    :cond_2
    move v0, v2

    .line 82
    goto :goto_2

    :cond_3
    move v0, v2

    .line 90
    goto :goto_3

    :cond_4
    move v0, v2

    .line 94
    goto :goto_4

    :cond_5
    move v0, v2

    .line 97
    goto :goto_5

    :cond_6
    move v1, v2

    .line 101
    goto :goto_6
.end method
