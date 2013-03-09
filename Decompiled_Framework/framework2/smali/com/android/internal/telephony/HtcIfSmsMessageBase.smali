.class public interface abstract Lcom/android/internal/telephony/HtcIfSmsMessageBase;
.super Ljava/lang/Object;
.source "HtcIfSmsMessageBase.java"


# virtual methods
.method public abstract getAbsoluteValidityPeriod()J
.end method

.method public abstract getCmasMessage()Lcom/android/internal/telephony/CmasMessage;
.end method

.method public abstract getDateOfReport()J
.end method

.method public abstract getDestinationAddress()Ljava/lang/String;
.end method

.method public abstract getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;
.end method

.method public abstract getMessageIdentifier()I
.end method

.method public abstract getPrivacyInd()I
.end method

.method public abstract getServiceCategory()I
.end method

.method public abstract getToaOfOriginatingAddress()I
.end method

.method public abstract getToaOfScAddress()I
.end method

.method public abstract isCMAS()Z
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

.method public abstract setFromEVDO(Z)V
.end method

.method public abstract setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V
.end method
