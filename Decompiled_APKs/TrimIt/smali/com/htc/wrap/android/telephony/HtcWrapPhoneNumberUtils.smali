.class public Lcom/htc/wrap/android/telephony/HtcWrapPhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "HtcWrapPhoneNumberUtils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final HTC_MIN_MATCH:I = 0x0

.field public static final PAUSE_1:C = ','

.field public static final PAUSE_SOFT_T_HARD_P:Z = false

.field public static final WAIT_1:C = ';'

.field public static final WILD_1:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget v0, Landroid/telephony/PhoneNumberUtils;->HTC_MIN_MATCH:I

    sput v0, Lcom/htc/wrap/android/telephony/HtcWrapPhoneNumberUtils;->HTC_MIN_MATCH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    return-void
.end method

.method public static AddPlustoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 18
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->AddPlustoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static alphabetAddressEncode(Ljava/lang/String;Z)[B
    .locals 1
    .parameter "address"
    .parameter "bWithLength"

    .prologue
    .line 43
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->alphabetAddressEncode(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 52
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractPureNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fdn_compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 38
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->fdn_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasAlphabet(Ljava/lang/String;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 47
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->hasAlphabet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static htc_compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static htc_compare(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "match"

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isCustomerSpecificDialString(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .parameter "dialNum"
    .parameter "isInCall"
    .parameter "numList"

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isCustomerSpecificDialString(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isNonSeparator_FDN(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 14
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator_FDN(C)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 70
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static numberToCalledPartyBCD_withoutTOA(Ljava/lang/String;)[B
    .locals 1
    .parameter "number"

    .prologue
    .line 65
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD_withoutTOA(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static parseGlobalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 61
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->parseGlobalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeNonFirstPlus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeNonFirstPlus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
