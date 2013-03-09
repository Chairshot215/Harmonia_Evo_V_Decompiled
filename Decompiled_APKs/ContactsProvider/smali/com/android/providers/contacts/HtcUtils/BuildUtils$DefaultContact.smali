.class public final Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/BuildUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultContact"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_CONTACT_ENABLED:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ISCHINACT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ISCHINACU:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ISCMCC:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ISDOPOD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ISOPENCHANNEL:Z = false

.field public static final PREF_KEY_INIT:Ljava/lang/String; = "default_contact_initialized"

.field public static final PROJECT_A0003:Z

.field public static final PROJECT_B0002:Z

.field public static final PROJECT_D0004:Z

.field public static final PROJECT_I0001:Z

.field public static final PROJECT_S0009:Z

.field public static final PROJECT_T0007:Z

.field public static final PROJECT_T0008:Z

.field public static final PROJECT_T0013:Z

.field public static final PROJECT_V0002:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1b

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 98
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_S0009:Z

    .line 101
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_D0004:Z

    .line 104
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_V0002:Z

    .line 107
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9e

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_T0007:Z

    .line 111
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_B0002:Z

    .line 115
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_I0001:Z

    .line 119
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9f

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_T0008:Z

    .line 123
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd9

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_T0013:Z

    .line 127
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_A0003:Z

    .line 130
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->ISCMCC:Z

    .line 133
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_a

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->ISDOPOD:Z

    .line 136
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->ISCHINACT:Z

    .line 139
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x17

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->ISCHINACU:Z

    .line 142
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_d

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, v4, :cond_d

    :goto_d
    sput-boolean v1, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->ISOPENCHANNEL:Z

    .line 146
    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->PROJECT_S0009:Z

    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;->DEFAULT_CONTACT_ENABLED:Z

    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v0, v2

    .line 101
    goto :goto_1

    :cond_2
    move v0, v2

    .line 104
    goto :goto_2

    :cond_3
    move v0, v2

    .line 107
    goto :goto_3

    :cond_4
    move v0, v2

    .line 111
    goto :goto_4

    :cond_5
    move v0, v2

    .line 115
    goto :goto_5

    :cond_6
    move v0, v2

    .line 119
    goto :goto_6

    :cond_7
    move v0, v2

    .line 123
    goto :goto_7

    :cond_8
    move v0, v2

    .line 127
    goto :goto_8

    :cond_9
    move v0, v2

    .line 130
    goto :goto_9

    :cond_a
    move v0, v2

    .line 133
    goto :goto_a

    :cond_b
    move v0, v2

    .line 136
    goto :goto_b

    :cond_c
    move v0, v2

    .line 139
    goto :goto_c

    :cond_d
    move v1, v2

    .line 142
    goto :goto_d
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
