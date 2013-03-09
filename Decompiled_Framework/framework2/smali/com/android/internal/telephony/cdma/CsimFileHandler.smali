.class public final Lcom/android/internal/telephony/cdma/CsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mSlotId:I

    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mAppId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "CsimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/CsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/cdma/CsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_1
        0x6f22 -> :sswitch_0
        0x6f32 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f41 -> :sswitch_0
        0x6f44 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CsimFileHandler] "

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

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CsimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
