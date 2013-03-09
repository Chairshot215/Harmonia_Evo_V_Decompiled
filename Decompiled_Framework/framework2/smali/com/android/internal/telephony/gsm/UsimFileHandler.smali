.class public final Lcom/android/internal/telephony/gsm/UsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


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

    const-string v0, "GSM"

    const-string v1, "UsimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/UsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    :sswitch_1
    const-string v0, "3F007FFF"

    goto :goto_0

    :sswitch_2
    const-string v0, "3F00"

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/gsm/UsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2f00 -> :sswitch_2
        0x4f30 -> :sswitch_3
        0x6f05 -> :sswitch_1
        0x6f11 -> :sswitch_1
        0x6f13 -> :sswitch_1
        0x6f14 -> :sswitch_1
        0x6f15 -> :sswitch_1
        0x6f16 -> :sswitch_1
        0x6f17 -> :sswitch_1
        0x6f18 -> :sswitch_1
        0x6f38 -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_1
        0x6f40 -> :sswitch_1
        0x6f45 -> :sswitch_1
        0x6f46 -> :sswitch_1
        0x6f4e -> :sswitch_1
        0x6f62 -> :sswitch_1
        0x6f7b -> :sswitch_1
        0x6fad -> :sswitch_1
        0x6fc5 -> :sswitch_1
        0x6fc6 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsimFileHandler] "

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

    const-string v2, "[UsimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
