.class public Lcom/android/internal/telephony/cdma/HtcCdmaModifier;
.super Ljava/lang/Object;
.source "HtcCdmaModifier.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcCdmaModifier"

.field private static final mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String; = null

.field private static final mCallEndNumberOverwritten_SprintLen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen1:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen11:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen2:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen4:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlenVari:[[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen1:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen2:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen4:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen5:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_SprintlenVari:[[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen1:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen11:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen2:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen4:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlenVari:[[Ljava/lang/String; = null

.field public static final mEmergencyDisplay_Sprint:Ljava/lang/String; = "9-1-1 Emergency"

.field private static final sBillPay:Ljava/lang/String; = "Bill Pay"

.field private static final sBoostCare:Ljava/lang/String; = "Boost Care"

.field private static final sBoostCare_num:Ljava/lang/String; = "18882667848"

.field private static final sCallBalance:Ljava/lang/String; = "Call Balance"

.field private static final sCallBeforeYouDig:Ljava/lang/String; = "Call Before You Dig"

.field private static final sCallCare:Ljava/lang/String; = "Call Care"

.field private static final sCallReboost:Ljava/lang/String; = "Call Reboost"

.field private static sCallerNumberOverwritten_lenVari:[[Ljava/lang/String; = null

.field private static final sCareService:Ljava/lang/String; = "Care Services"

.field private static final sCarrierServiceRepair:Ljava/lang/String; = "Carrier Service Repair"

.field private static final sCommunityInformation:Ljava/lang/String; = "Community Information"

.field private static final sCustomerService:Ljava/lang/String; = "Customer Service"

.field private static final sDirectoryAssistance:Ljava/lang/String; = "Directory Assistance"

.field private static final sEmergencyDisplay:Ljava/lang/String; = "9-1-1 Emergency"

.field private static final sNonEmergencyServices:Ljava/lang/String; = "Non-Emergency Services"

.field private static final sOperator:Ljava/lang/String; = "Operator"

.field private static final sSprintDirectoryAssistance:Ljava/lang/String; = "Sprint Directory Assistance"

.field private static final sSprintOperator:Ljava/lang/String; = "Sprint Operator"

.field private static final sSprintWirelessAccountInformation:Ljava/lang/String; = "Sprint Wireless Account Information"

.field private static final sTRSRelayTTY:Ljava/lang/String; = "TRS Relay for TTY"

.field private static final sTrafficInformation:Ljava/lang/String; = "Traffic Information"

.field private static final sVMCare:Ljava/lang/String; = "Virgin Mobile Care"

.field private static final sVMCare_num:Ljava/lang/String; = "18883221122"

.field private static final sVoiceMail:Ljava/lang/String; = "Voicemail"

.field private static final sWirelessAccountInformation:Ljava/lang/String; = "Wireless Account Information"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v4

    const-string v2, "Sprint Operator"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    const-string v2, "Voicemail"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen1:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#3"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*2"

    aput-object v2, v0, v6

    const-string v2, "Customer Service"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "*3"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Bill Pay"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "*4"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Sprint Wireless Account Information"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen2:[Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "211"

    aput-object v2, v0, v4

    const-string v2, "Community Information"

    aput-object v2, v0, v5

    const-string v2, "311"

    aput-object v2, v0, v6

    const-string v2, "Non-Emergency Services"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "411"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Sprint Directory Assistance"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "511"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Traffic Information"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "611"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Carrier Service Repair"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "711"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "TRS Relay for TTY"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "811"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Call Before You Dig"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "911"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "#38"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    const-string v3, "*55"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v2, 0x14

    const-string v3, "722"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen3:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#399"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "#911"

    aput-object v2, v0, v6

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "*477"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    const-string v3, "*700"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    const-string v3, "*911"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen4:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#2896"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*8477"

    aput-object v2, v0, v6

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen5:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen1:[Ljava/lang/String;

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen2:[Ljava/lang/String;

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen3:[Ljava/lang/String;

    aput-object v2, v0, v7

    const/4 v2, 0x4

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen4:[Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen5:[Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_SprintlenVari:[[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    const-string v2, "Voicemail"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen1:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "*2"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*4"

    aput-object v2, v0, v6

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen2:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "211"

    aput-object v2, v0, v4

    const-string v2, "Community Information"

    aput-object v2, v0, v5

    const-string v2, "311"

    aput-object v2, v0, v6

    const-string v2, "Non-Emergency Services"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "411"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "511"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Traffic Information"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "611"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "711"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "TRS Relay for TTY"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "811"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Call Before You Dig"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "911"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "*86"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "Call Care"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen3:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#911"

    aput-object v2, v0, v4

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v5

    const-string v2, "*911"

    aput-object v2, v0, v6

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "*611"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "#611"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "*411"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "#411"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen4:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "18883221122"

    aput-object v2, v0, v4

    const-string v2, "Virgin Mobile Care"

    aput-object v2, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen11:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen1:[Ljava/lang/String;

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen2:[Ljava/lang/String;

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen3:[Ljava/lang/String;

    aput-object v2, v0, v7

    const/4 v2, 0x4

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen4:[Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen11:[Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlenVari:[[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    const-string v2, "Voicemail"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen1:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "*2"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*4"

    aput-object v2, v0, v6

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen2:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "211"

    aput-object v2, v0, v4

    const-string v2, "Community Information"

    aput-object v2, v0, v5

    const-string v2, "225"

    aput-object v2, v0, v6

    const-string v2, "Call Balance"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "233"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Call Reboost"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "311"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Non-Emergency Services"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "411"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "511"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "Traffic Information"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "611"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "711"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "TRS Relay for TTY"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "811"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "Call Before You Dig"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "911"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen3:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#911"

    aput-object v2, v0, v4

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v5

    const-string v2, "*911"

    aput-object v2, v0, v6

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "*611"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "#611"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "*225"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Call Balance"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "#225"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "Call Balance"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "*233"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Call Reboost"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "#233"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "Call Reboost"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "*411"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "#411"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen4:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "18882667848"

    aput-object v2, v0, v4

    const-string v2, "Boost Care"

    aput-object v2, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen11:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen1:[Ljava/lang/String;

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen2:[Ljava/lang/String;

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen3:[Ljava/lang/String;

    aput-object v2, v0, v7

    const/4 v2, 0x4

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen4:[Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen11:[Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlenVari:[[Ljava/lang/String;

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_SprintlenVari:[[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "*2"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v1, "*4"

    aput-object v1, v0, v6

    const-string v1, "Sprint Wireless Account Information"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "211"

    aput-object v1, v0, v4

    const-string v1, "Community Information"

    aput-object v1, v0, v5

    const-string v1, "411"

    aput-object v1, v0, v6

    const-string v1, "Sprint Directory Assistance"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "511"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Traffic Information"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "611"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Carrier Service Repair"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "711"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TRS Relay for TTY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "811"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Call Before You Dig"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen3:[Ljava/lang/String;

    return-void

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xaf

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlenVari:[[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlenVari:[[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getACGServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v2, "611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "Customer Service"

    goto :goto_0

    :cond_2
    const-string v2, "411"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Directory Service"

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    const-string v2, "#646"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "Minute Usage"

    goto :goto_0

    :cond_4
    const-string v2, "#729"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Bill Payment"

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    const-string v2, "#2455"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Account Balance"

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const-string v2, "#78676"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Emergency Weather"

    goto :goto_0
.end method

.method public static getCellSouthCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v2, "611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "Cellular South Customer Service"

    goto :goto_0

    :cond_2
    const-string v2, "411"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Directory Service"

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    const-string v2, "#646"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "Cellular South Minute Usage"

    goto :goto_0

    :cond_4
    const-string v2, "#729"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Cellular South Bill Payment"

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    const-string v2, "#2455"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Cellular South Account Balance"

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const-string v2, "#78676"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Cellular South Emergency Weather"

    goto :goto_0
.end method

.method private static getMccByNVvalue(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "302"

    goto :goto_0

    :sswitch_1
    const-string v0, "311"

    goto :goto_0

    :sswitch_2
    const-string v0, "302"

    goto :goto_0

    :sswitch_3
    const-string v0, "734"

    goto :goto_0

    :sswitch_4
    const-string v0, "310"

    goto :goto_0

    :sswitch_5
    const-string v0, "311"

    goto :goto_0

    :sswitch_6
    const-string v0, "310"

    goto :goto_0

    :sswitch_7
    const-string v0, "311"

    goto :goto_0

    :sswitch_8
    const-string v0, "310"

    goto :goto_0

    :sswitch_9
    const-string v0, "311"

    goto :goto_0

    :sswitch_a
    const-string v0, "310"

    goto :goto_0

    :sswitch_b
    const-string v0, "311"

    goto :goto_0

    :sswitch_c
    const-string v0, "310"

    goto :goto_0

    :sswitch_d
    const-string v0, "311"

    goto :goto_0

    :sswitch_e
    const-string v0, "310"

    goto :goto_0

    :sswitch_f
    const-string v0, "311"

    goto :goto_0

    :sswitch_10
    const-string v0, "310"

    goto :goto_0

    :sswitch_11
    const-string v0, "311"

    goto :goto_0

    :sswitch_12
    const-string v0, "310"

    goto :goto_0

    :sswitch_13
    const-string v0, "311"

    goto :goto_0

    :sswitch_14
    const-string v0, "310"

    goto :goto_0

    :sswitch_15
    const-string v0, "311"

    goto :goto_0

    :sswitch_16
    const-string v0, "310"

    goto :goto_0

    :sswitch_17
    const-string v0, "311"

    goto :goto_0

    :sswitch_18
    const-string v0, "311"

    goto :goto_0

    :sswitch_19
    const-string v0, "310"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xd -> :sswitch_9
        0xf -> :sswitch_3
        0x18 -> :sswitch_4
        0x19 -> :sswitch_c
        0x1a -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_6
        0x68 -> :sswitch_f
        0x69 -> :sswitch_12
        0x6b -> :sswitch_f
        0x6c -> :sswitch_c
        0x6d -> :sswitch_6
        0x6e -> :sswitch_10
        0x6f -> :sswitch_7
        0x70 -> :sswitch_4
        0x71 -> :sswitch_d
        0x72 -> :sswitch_19
        0x73 -> :sswitch_17
        0x74 -> :sswitch_b
        0x75 -> :sswitch_14
        0x77 -> :sswitch_b
        0x78 -> :sswitch_18
        0x79 -> :sswitch_11
        0x7a -> :sswitch_13
        0x7b -> :sswitch_d
        0x7c -> :sswitch_e
        0x7d -> :sswitch_15
        0x7e -> :sswitch_19
        0x7f -> :sswitch_8
        0x80 -> :sswitch_e
        0x81 -> :sswitch_a
        0x82 -> :sswitch_16
        0x83 -> :sswitch_19
        0x84 -> :sswitch_14
        0x85 -> :sswitch_c
        0x86 -> :sswitch_19
        0x87 -> :sswitch_19
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMccMncByCarrierId(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-static {v3, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMccByNVvalue(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "00"

    :cond_0
    return-object v0

    :sswitch_0
    const-string v1, "310"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "012"

    goto :goto_0

    :cond_1
    const-string v0, "280"

    goto :goto_0

    :sswitch_1
    const-string v0, "120"

    goto :goto_0

    :sswitch_2
    const-string v0, "86"

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string v0, "270"

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_8
    const-string v0, "470"

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_a
    const-string v0, "68"

    goto :goto_0

    :sswitch_b
    const-string v0, "280"

    goto :goto_0

    :sswitch_c
    const-string v0, "06"

    goto :goto_0

    :sswitch_d
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_e
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_f
    const-string v0, "600"

    goto :goto_0

    :sswitch_10
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_11
    const-string v0, "130"

    goto :goto_0

    :sswitch_12
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_13
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_14
    const-string v0, "050"

    goto :goto_0

    :sswitch_15
    const-string v0, "430"

    goto :goto_0

    :sswitch_16
    const-string v0, "750"

    goto :goto_0

    :sswitch_17
    const-string v0, "440"

    goto :goto_0

    :sswitch_18
    const-string v0, "600"

    goto :goto_0

    :sswitch_19
    const-string v0, "430"

    goto :goto_0

    :sswitch_1a
    const-string v0, "230"

    goto :goto_0

    :sswitch_1b
    const-string v0, "280"

    goto :goto_0

    :sswitch_1c
    const-string v0, "590"

    goto :goto_0

    :sswitch_1d
    const-string v0, "340"

    goto :goto_0

    :sswitch_1e
    const-string v0, "580"

    goto :goto_0

    :sswitch_1f
    const-string v0, "92"

    goto :goto_0

    :sswitch_20
    const-string v0, "310"

    goto :goto_0

    :sswitch_21
    const-string v0, "410"

    goto :goto_0

    :sswitch_22
    const-string v0, "010"

    goto :goto_0

    :sswitch_23
    const-string v0, "100"

    goto :goto_0

    :sswitch_24
    const-string v0, "420"

    goto :goto_0

    :sswitch_25
    const-string v0, "450"

    goto :goto_0

    :sswitch_26
    const-string v0, "360"

    goto :goto_0

    :sswitch_27
    const-string v0, "350"

    goto :goto_0

    :sswitch_28
    const-string v0, "960"

    goto :goto_0

    :sswitch_29
    const-string v0, "960"

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "610"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "960"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "050"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "440"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "930"

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_10
        0x7 -> :sswitch_3
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xd -> :sswitch_1a
        0xf -> :sswitch_c
        0x12 -> :sswitch_5
        0x13 -> :sswitch_12
        0x18 -> :sswitch_14
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_17
        0x1b -> :sswitch_6
        0x65 -> :sswitch_16
        0x66 -> :sswitch_18
        0x68 -> :sswitch_23
        0x69 -> :sswitch_26
        0x6b -> :sswitch_24
        0x6c -> :sswitch_d
        0x6d -> :sswitch_11
        0x6e -> :sswitch_8
        0x6f -> :sswitch_19
        0x70 -> :sswitch_15
        0x71 -> :sswitch_21
        0x72 -> :sswitch_2d
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_1c
        0x75 -> :sswitch_28
        0x76 -> :sswitch_7
        0x77 -> :sswitch_1d
        0x78 -> :sswitch_f
        0x79 -> :sswitch_25
        0x7a -> :sswitch_27
        0x7b -> :sswitch_20
        0x7c -> :sswitch_22
        0x7d -> :sswitch_2a
        0x7e -> :sswitch_13
        0x81 -> :sswitch_1b
        0x82 -> :sswitch_2b
        0x84 -> :sswitch_29
        0x85 -> :sswitch_1f
        0x87 -> :sswitch_2e
        0xc9 -> :sswitch_a
        0xca -> :sswitch_b
        0xcb -> :sswitch_e
    .end sparse-switch
.end method

.method public static getOperatorByCarrierId(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "China Telecom"

    goto :goto_0

    :sswitch_1
    const-string v0, "Verizon"

    goto :goto_0

    :sswitch_2
    const-string v0, "sprint"

    goto :goto_0

    :sswitch_3
    const-string v0, "Telus"

    goto :goto_0

    :sswitch_4
    const-string v0, "Bill Mobility"

    goto :goto_0

    :sswitch_5
    const-string v0, "AllTel"

    goto :goto_0

    :sswitch_6
    const-string v0, "Reliance"

    goto :goto_0

    :sswitch_7
    const-string v0, "USC"

    goto :goto_0

    :sswitch_8
    const-string v0, "MTS"

    goto :goto_0

    :sswitch_9
    const-string v0, "PantherC Sask"

    goto :goto_0

    :sswitch_a
    const-string v0, "PantherC Centennial"

    goto :goto_0

    :sswitch_b
    const-string v0, "Movilnet"

    goto :goto_0

    :sswitch_c
    const-string v0, "PantherC MTS"

    goto :goto_0

    :sswitch_d
    const-string v0, "APBW"

    goto :goto_0

    :sswitch_e
    const-string v0, "PLS"

    goto :goto_0

    :sswitch_f
    const-string v0, "ACS"

    goto :goto_0

    :sswitch_10
    const-string v0, "Alaska Digital"

    goto :goto_0

    :sswitch_11
    const-string v0, "Appalachian"

    goto :goto_0

    :sswitch_12
    const-string v0, "Bluegrass"

    goto :goto_0

    :sswitch_13
    const-string v0, "Cellcom"

    goto :goto_0

    :sswitch_14
    const-string v0, "Carolina West"

    goto :goto_0

    :sswitch_15
    const-string v0, "Cellular 29"

    goto :goto_0

    :sswitch_16
    const-string v0, "Cellular One Nepa"

    goto :goto_0

    :sswitch_17
    const-string v0, "Cellular South"

    goto :goto_0

    :sswitch_18
    const-string v0, "Centennial PR"

    goto :goto_0

    :sswitch_19
    const-string v0, "Golden State"

    goto :goto_0

    :sswitch_1a
    const-string v0, "Illionois Valley"

    goto :goto_0

    :sswitch_1b
    const-string v0, "Inland"

    goto :goto_0

    :sswitch_1c
    const-string v0, "Iusacell"

    goto :goto_0

    :sswitch_1d
    const-string v0, "James Valley"

    goto :goto_0

    :sswitch_1e
    const-string v0, "Leaco"

    goto :goto_0

    :sswitch_1f
    const-string v0, "Lyrix (now Chat Mobility)"

    goto :goto_0

    :sswitch_20
    const-string v0, "Midrivers"

    goto :goto_0

    :sswitch_21
    const-string v0, "MTA"

    goto :goto_0

    :sswitch_22
    const-string v0, "Nex-Tech"

    goto :goto_0

    :sswitch_23
    const-string v0, "Northwest MO"

    goto :goto_0

    :sswitch_24
    const-string v0, "nTelos"

    goto :goto_0

    :sswitch_25
    const-string v0, "Panhandle"

    goto :goto_0

    :sswitch_26
    const-string v0, "Pioneer"

    goto :goto_0

    :sswitch_27
    const-string v0, "Sagebrush"

    goto :goto_0

    :sswitch_28
    const-string v0, "Silverstar"

    goto :goto_0

    :sswitch_29
    const-string v0, "South Central"

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "SRT Communications"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "Syringa"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "Thumb"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "Unicel"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "United"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "Open Mobile"

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "Cooper valley"

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "Mobi PCS"

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "COX"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_d
        0x7 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_5
        0xd -> :sswitch_17
        0xf -> :sswitch_b
        0x12 -> :sswitch_6
        0x13 -> :sswitch_e
        0x18 -> :sswitch_f
        0x19 -> :sswitch_1b
        0x1a -> :sswitch_12
        0x1b -> :sswitch_7
        0x65 -> :sswitch_11
        0x66 -> :sswitch_13
        0x68 -> :sswitch_22
        0x69 -> :sswitch_26
        0x6b -> :sswitch_23
        0x6c -> :sswitch_1c
        0x6d -> :sswitch_14
        0x6e -> :sswitch_24
        0x6f -> :sswitch_15
        0x70 -> :sswitch_10
        0x71 -> :sswitch_1f
        0x72 -> :sswitch_2e
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_19
        0x75 -> :sswitch_28
        0x76 -> :sswitch_8
        0x77 -> :sswitch_1a
        0x78 -> :sswitch_32
        0x79 -> :sswitch_25
        0x7a -> :sswitch_27
        0x7b -> :sswitch_1e
        0x7c -> :sswitch_21
        0x7d -> :sswitch_2a
        0x7e -> :sswitch_2d
        0x7f -> :sswitch_16
        0x80 -> :sswitch_20
        0x81 -> :sswitch_18
        0x82 -> :sswitch_2b
        0x83 -> :sswitch_2f
        0x84 -> :sswitch_29
        0x85 -> :sswitch_1d
        0x86 -> :sswitch_31
        0x87 -> :sswitch_30
        0xc9 -> :sswitch_9
        0xca -> :sswitch_a
        0xcb -> :sswitch_c
    .end sparse-switch
.end method

.method public static getOverwriteCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v9, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x32

    if-gt v5, v0, :cond_0

    const/16 v5, 0x38

    if-gt v0, v5, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_0

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen3:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    if-ne v2, v8, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_4

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String;

    aget-object v4, v4, v7

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x34

    if-ne v5, v6, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String;

    aget-object v4, v4, v9

    goto :goto_0
.end method

.method public static getOverwriteRoamingCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "911"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "*4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Roaming"

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    const-string v2, "*9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "Correo de voz"

    goto :goto_0

    :cond_2
    const-string v2, "*5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Consulta de Saldo"

    goto :goto_0

    :cond_3
    const-string v2, "*1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Emergencia"

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const-string v2, "*21"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Recarga Prepago"

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string v2, "*611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Atenci\u00f3n al Cliente"

    goto :goto_0
.end method

.method public static getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_0

    const-string v1, "1417"

    :goto_0
    return-object v1

    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDetectVMbyCarrierIdFromNV:Z

    if-eqz v1, :cond_1

    sparse-switch p0, :sswitch_data_0

    move-object v0, p1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :sswitch_0
    const-string v0, "0000000000"

    goto :goto_1

    :sswitch_1
    const-string v0, "*86"

    goto :goto_1

    :sswitch_2
    const-string v0, "*89"

    goto :goto_1

    :sswitch_3
    const-string v0, "6057256245"

    goto :goto_1

    :sswitch_4
    const-string v0, "4064850808"

    goto :goto_1

    :sswitch_5
    const-string v0, "*95"

    goto :goto_1

    :sswitch_6
    const-string v0, "7018529600"

    goto :goto_1

    :sswitch_7
    const-string v0, "*86"

    goto :goto_1

    :sswitch_8
    const-string v0, "123"

    goto :goto_1

    :sswitch_9
    const-string v0, "9078226245"

    goto :goto_1

    :sswitch_a
    const-string v0, "8154886245"

    goto :goto_1

    :sswitch_b
    const-string v0, "9077457900"

    goto :goto_1

    :sswitch_c
    const-string v0, "#9"

    goto :goto_1

    :sswitch_d
    const-string v0, "*9"

    goto :goto_1

    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_2

    const-string v0, "*86"

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_d
        0x66 -> :sswitch_0
        0x6c -> :sswitch_c
        0x6d -> :sswitch_1
        0x77 -> :sswitch_a
        0x79 -> :sswitch_5
        0x7c -> :sswitch_b
        0x7d -> :sswitch_6
        0x80 -> :sswitch_4
        0x81 -> :sswitch_2
        0x82 -> :sswitch_7
        0x83 -> :sswitch_8
        0x85 -> :sswitch_3
        0x87 -> :sswitch_9
    .end sparse-switch
.end method

.method public static isN11Number(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    aget-object v4, v5, v3

    :cond_2
    if-eqz v4, :cond_4

    const-string v5, "HtcCdmaModifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "matchingTable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-object v5, v4, v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    array-length v5, v4

    if-ge v0, v5, :cond_4

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public static overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    aget-object v3, v4, v1

    :cond_3
    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    array-length v4, v3

    if-ge v0, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    aget-object v2, v3, v4

    goto :goto_0
.end method
