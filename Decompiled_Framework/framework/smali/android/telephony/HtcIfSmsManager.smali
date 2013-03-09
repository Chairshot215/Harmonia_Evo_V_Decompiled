.class public interface abstract Landroid/telephony/HtcIfSmsManager;
.super Ljava/lang/Object;
.source "HtcIfSmsManager.java"


# static fields
.field public static final KDDI_RESULT_ST_CANCEL_COMPLETED:I = 0x2c

.field public static final KDDI_RESULT_ST_ERROR_C_NO_REGISTER:I = 0x20

.field public static final KDDI_RESULT_ST_ERROR_C_NO_USER:I = 0x1f

.field public static final KDDI_RESULT_ST_ERROR_C_RESTRICTED:I = 0x22

.field public static final KDDI_RESULT_ST_ERROR_C_SUSPEND:I = 0x21

.field public static final KDDI_RESULT_ST_ERROR_GENERIC_FAILURE:I = 0x2b

.field public static final KDDI_RESULT_ST_ERROR_IMF_DOESNT_USE:I = 0x28

.field public static final KDDI_RESULT_ST_ERROR_IMF_DOESNT_WORK:I = 0x27

.field public static final KDDI_RESULT_ST_ERROR_MAIL_BOX_OVER:I = 0x29

.field public static final KDDI_RESULT_ST_ERROR_ON_CALLING:I = 0x2a

.field public static final KDDI_RESULT_ST_ERROR_R_NO_REGISTER:I = 0x24

.field public static final KDDI_RESULT_ST_ERROR_R_NO_USER:I = 0x23

.field public static final KDDI_RESULT_ST_ERROR_R_RESTRICTED:I = 0x26

.field public static final KDDI_RESULT_ST_ERROR_R_SUSPEND:I = 0x25

.field public static final KDDI_RESULT_ST_OK:I = 0x1e

.field public static final KDDI_RESULT_TR_CANCEL_COMPLETED:I = 0x18

.field public static final KDDI_RESULT_TR_ERROR_C_NO_REGISTER:I = 0xc

.field public static final KDDI_RESULT_TR_ERROR_C_NO_USER:I = 0xb

.field public static final KDDI_RESULT_TR_ERROR_C_RESTRICTED:I = 0xe

.field public static final KDDI_RESULT_TR_ERROR_C_SUSPEND:I = 0xd

.field public static final KDDI_RESULT_TR_ERROR_GENERIC_FAILURE:I = 0x17

.field public static final KDDI_RESULT_TR_ERROR_IMF_DOESNT_USE:I = 0x14

.field public static final KDDI_RESULT_TR_ERROR_IMF_DOESNT_WORK:I = 0x13

.field public static final KDDI_RESULT_TR_ERROR_IMF_UNEXPECTED_OCCURRENCE:I = 0x15

.field public static final KDDI_RESULT_TR_ERROR_ON_CALLING:I = 0x16

.field public static final KDDI_RESULT_TR_ERROR_R_NO_REGISTER:I = 0x10

.field public static final KDDI_RESULT_TR_ERROR_R_NO_USER:I = 0xf

.field public static final KDDI_RESULT_TR_ERROR_R_RESTRICTED:I = 0x12

.field public static final KDDI_RESULT_TR_ERROR_R_SUSPEND:I = 0x11

.field public static final KDDI_RESULT_TR_OK:I = 0xa

.field public static final KDDI_SEND_MODE_STANDARD_API:I = 0x3

.field public static final KDDI_SEND_MODE_STORE:I = 0x2

.field public static final KDDI_SEND_MODE_TRANSACTION:I = 0x1

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_MAX:I = 0x8d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_OFFSET:I = 0x7d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_SPEC:I = 0xff

.field public static final RESULT_ERROR_SMS_FAILURE_EXTRA_CAUSE_FDN:I = 0x101

.field public static final RESULT_ERROR_SMS_FAILURE_RETRY_SEND:I = 0x102


# virtual methods
.method public abstract copyMessageToIcc(Z[B[BI)Z
.end method

.method public abstract copyMessageToIccExt([B[BII)I
.end method

.method public abstract copyMessageToIccForResult(Z[B[BI)I
.end method

.method public abstract copyMessageToIccForResult([B[BI)I
.end method

.method public abstract deleteMessageFromIcc(ZI)Z
.end method

.method public abstract deleteMessageFromIccExt(II)Z
.end method

.method public abstract divideMessageExt(Ljava/lang/String;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMessagesFromIccExt(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCarrierID()Ljava/lang/String;
.end method

.method public abstract getExtIccSmsPhoneType()I
.end method

.method public abstract getIccSmsCount()I
.end method

.method public abstract getIccSmsCountExt(I)I
.end method

.method public abstract getMessageFromSim(I)[B
.end method

.method public abstract getMessageFromSimExt(II)[B
.end method

.method public abstract getMessageFromSimWithType(ZI)[B
.end method

.method public abstract getSMSC()Ljava/lang/String;
.end method

.method public abstract getSMSCExt(I)Ljava/lang/String;
.end method

.method public abstract getTestBCSMS()[I
.end method

.method public abstract htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
.end method

.method public abstract kddiSendCancel(Landroid/content/Context;Landroid/app/PendingIntent;)Z
.end method

.method public abstract kddiSendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/content/Context;)V
.end method

.method public abstract queryBCSMS(II)[I
.end method

.method public abstract requestGetBCSMSServiceEntry(II)[I
.end method

.method public abstract requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
.end method

.method public abstract requestGetBCSMSServiceNumber()I
.end method

.method public abstract sendCDMATextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
.end method

.method public abstract sendDataMessageExt(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
.end method

.method public abstract sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendMultipartTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
.end method

.method public abstract sendTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
.end method

.method public abstract setBCSMS(II)I
.end method

.method public abstract setExtIccSmsPhoneType(I)V
.end method

.method public abstract setSMSC(Ljava/lang/String;)V
.end method

.method public abstract setSMSCExt(Ljava/lang/String;I)V
.end method

.method public abstract setTestBCSMS(II)I
.end method

.method public abstract syncCmasServiceTable()Landroid/os/Bundle;
.end method

.method public abstract updateMessageOnIcc(ZII[B)Z
.end method

.method public abstract updateMessageOnIccExt(II[BI)Z
.end method

.method public abstract updateNvItem()V
.end method
