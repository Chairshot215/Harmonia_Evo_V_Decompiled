.class public interface abstract Landroid/telephony/HtcIfSmsMessage;
.super Ljava/lang/Object;
.source "HtcIfSmsMessage.java"


# static fields
.field public static final ENCODING_KSC5601:I = 0x4

.field public static final MAX_USER_DATA_BYTES_WITH_CONC_AND_HEADER:I = 0x80

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_GREEK_NLI_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_NLI_HEADER:I = 0x92

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_SPANISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_TURKISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_GREEK_NLI_HEADER:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_NLI_HEADER:I = 0x98

.field public static final MAX_USER_DATA_SEPTETS_WITH_SPANISH_NLI_HEADER:I = 0x9b

.field public static final MAX_USER_DATA_SEPTETS_WITH_TURKISH_NLI_HEADER:I = 0x9b


# virtual methods
.method public abstract getAbsoluteValidityPeriod()J
.end method

.method public abstract getCallBackNumber()Ljava/lang/String;
.end method

.method public abstract getCmasMessage()Lcom/android/internal/telephony/CmasMessage;
.end method

.method public abstract getDateOfReport()J
.end method

.method public abstract getDestinationAddress()Ljava/lang/String;
.end method

.method public abstract getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;
.end method

.method public abstract getMessageId()I
.end method

.method public abstract getMessageIdentifier()I
.end method

.method public abstract getPriority()I
.end method

.method public abstract getPrivacyInd()I
.end method

.method public abstract getRawSmsc()[B
.end method

.method public abstract getServiceCategory()I
.end method

.method public abstract getToaOfOriginatingAddress()I
.end method

.method public abstract getToaOfScAddress()I
.end method

.method public abstract getTpdu()[B
.end method

.method public abstract getdataCodingScheme()I
.end method

.method public abstract isCMAS()Z
.end method

.method public abstract isCdmaFormat()Z
.end method

.method public abstract isFromEVDO()Z
.end method

.method public abstract isKddiBCSMS()Z
.end method

.method public abstract isKddiProprietaryServiceCategory()Z
.end method

.method public abstract isOutGoingSms()Z
.end method

.method public abstract isUnsupportedMessage()Z
.end method

.method public abstract setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V
.end method

.method public abstract setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V
.end method

.method public abstract setIndexOnIcc(I)V
.end method
