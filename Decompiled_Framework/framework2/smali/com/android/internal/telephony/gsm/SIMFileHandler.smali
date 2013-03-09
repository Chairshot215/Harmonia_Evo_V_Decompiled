.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mSlotId:I

    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mAppId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method protected appendFilePath(I)I
    .locals 5

    move v1, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->isCommonIccFile(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x6f31

    if-ne p1, v3, :cond_0

    const-string v3, "7F25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getUSIMEFPath(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "3F007F10"

    goto :goto_0

    :cond_1
    const-string v2, "7F10"

    goto :goto_0

    :sswitch_1
    const-string v2, "7F25"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "3F007F20"

    goto :goto_0

    :cond_2
    const-string v2, "7F20"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "3F007FFF"

    goto :goto_0

    :cond_3
    const-string v2, "7FFF"

    goto :goto_0

    :sswitch_4
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f02 -> :sswitch_3
        0x6f03 -> :sswitch_3
        0x6f04 -> :sswitch_3
        0x6f05 -> :sswitch_2
        0x6f07 -> :sswitch_3
        0x6f11 -> :sswitch_2
        0x6f13 -> :sswitch_2
        0x6f14 -> :sswitch_2
        0x6f15 -> :sswitch_2
        0x6f16 -> :sswitch_2
        0x6f17 -> :sswitch_2
        0x6f18 -> :sswitch_2
        0x6f31 -> :sswitch_1
        0x6f38 -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_2
        0x6f45 -> :sswitch_2
        0x6f46 -> :sswitch_2
        0x6f62 -> :sswitch_2
        0x6f7b -> :sswitch_2
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_2
        0x6fc7 -> :sswitch_2
        0x6fc8 -> :sswitch_2
        0x6fc9 -> :sswitch_2
        0x6fca -> :sswitch_2
        0x6fcb -> :sswitch_2
        0x6fcd -> :sswitch_2
        0x6fd5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected getUSIMEFPath(I)Ljava/lang/String;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/16 v1, 0x2fe2

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMFileHandler;->DFPhonebookPath:Ljava/lang/String;

    :goto_0
    return-object v1

    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3F007FFF"

    goto :goto_0

    :cond_1
    const-string v1, "7FFF"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3F00"

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "3F007FFF"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "7F10"

    goto :goto_0

    :cond_4
    const-string v1, "3F007F10"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "3F007FFF"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "7F20"

    goto :goto_0

    :cond_6
    const-string v1, "3F007F20"

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "3F007FFF"

    goto :goto_0

    :cond_7
    const-string v1, "7FFF"

    goto :goto_0

    :sswitch_5
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    :cond_8
    move-object v1, v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2f00 -> :sswitch_1
        0x4f22 -> :sswitch_5
        0x4f23 -> :sswitch_5
        0x4f24 -> :sswitch_5
        0x4f30 -> :sswitch_5
        0x6f02 -> :sswitch_4
        0x6f03 -> :sswitch_4
        0x6f04 -> :sswitch_4
        0x6f05 -> :sswitch_0
        0x6f07 -> :sswitch_4
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f45 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6f4b -> :sswitch_2
        0x6f4c -> :sswitch_2
        0x6f4e -> :sswitch_0
        0x6f62 -> :sswitch_0
        0x6f7b -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
        0x6fd5 -> :sswitch_4
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SimFileHandler drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
