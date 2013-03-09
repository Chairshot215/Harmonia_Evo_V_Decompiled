.class public Lcom/htc/wrap/com/android/internal/telephony/gsm/HtcWrapGSMPhone;
.super Ljava/lang/Object;
.source "HtcWrapGSMPhone.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPreferredOperatorList(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->addPreferredOperatorList(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public static getPreferredOperatorList(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPreferredOperatorList(Landroid/os/Message;)V

    return-void
.end method

.method public static removePreferredOperatorList(Lcom/android/internal/telephony/gsm/GSMPhone;ILandroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->removePreferredOperatorList(ILandroid/os/Message;)V

    return-void
.end method
