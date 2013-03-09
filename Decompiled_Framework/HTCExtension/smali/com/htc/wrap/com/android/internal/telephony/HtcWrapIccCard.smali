.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;
.super Ljava/lang/Object;
.source "HtcWrapIccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;
    }
.end annotation


# static fields
.field private static mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getState()Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;
    .locals 2

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ABSENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PIN_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_4

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NETWORK_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_5

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_6

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NOT_READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_7

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_8

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->IMEI_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_EXPIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_a

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_PERM_BLOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_a
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0
.end method

.method public static setupPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    sput-object p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method
