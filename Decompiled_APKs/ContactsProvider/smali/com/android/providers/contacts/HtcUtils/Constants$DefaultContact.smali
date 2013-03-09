.class public final Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultContact"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_CONTACT_ENABLED:Z = false

.field public static final PREF_KEY_INIT:Ljava/lang/String; = "default_contact_initialized"

.field public static final PROJECT_BRIGHT_STAR:Z

.field public static final PROJECT_CMCC:Z

.field public static final PROJECT_CU:Z

.field public static final PROJECT_DOPOD:Z

.field public static final PROJECT_IUSACELL:Z

.field public static final PROJECT_MECHA_VERIZON:Z

.field public static final PROJECT_OPEN_CHANNEL:Z

.field public static final PROJECT_SBM:Z

.field public static final PROJECT_TELCEL:Z

.field public static final PROJECT_TELEFONICA:Z

.field public static final PROJECT_TELSTRA:Z

.field public static final PROJECT_VODAFONE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x1b

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 61
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_SBM:Z

    .line 65
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_DOPOD:Z

    .line 69
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_VODAFONE:Z

    .line 73
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9e

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_TELEFONICA:Z

    .line 77
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_MECHA_VERIZON:Z

    .line 81
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_BRIGHT_STAR:Z

    .line 85
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_IUSACELL:Z

    .line 89
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_CMCC:Z

    .line 93
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x17

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_CU:Z

    .line 96
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9f

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_TELSTRA:Z

    .line 100
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd9

    if-ne v0, v3, :cond_d

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_TELCEL:Z

    .line 103
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    sput-boolean v2, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_OPEN_CHANNEL:Z

    .line 109
    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_SBM:Z

    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->DEFAULT_CONTACT_ENABLED:Z

    return-void

    :cond_3
    move v0, v2

    .line 61
    goto :goto_0

    :cond_4
    move v0, v2

    .line 65
    goto :goto_1

    :cond_5
    move v0, v2

    .line 69
    goto :goto_2

    :cond_6
    move v0, v2

    .line 73
    goto :goto_3

    :cond_7
    move v0, v2

    .line 77
    goto :goto_4

    :cond_8
    move v0, v2

    .line 81
    goto :goto_5

    :cond_9
    move v0, v2

    .line 85
    goto :goto_6

    :cond_a
    move v0, v2

    .line 89
    goto :goto_7

    :cond_b
    move v0, v2

    .line 93
    goto :goto_8

    :cond_c
    move v0, v2

    .line 96
    goto :goto_9

    :cond_d
    move v0, v2

    .line 100
    goto :goto_a
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
