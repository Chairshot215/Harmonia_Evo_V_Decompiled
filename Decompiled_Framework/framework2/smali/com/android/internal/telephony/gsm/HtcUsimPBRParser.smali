.class public Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;
.super Landroid/os/Handler;
.source "HtcUsimPBRParser.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcUsimPBRParser"

.field public static final USIM_EFAAS_TAG:I = 0xc7

.field public static final USIM_EFADN_TAG:I = 0xc0

.field public static final USIM_EFANR_TAG:I = 0xc4

.field public static final USIM_EFCCP1_TAG:I = 0xcb

.field public static final USIM_EFEMAIL_TAG:I = 0xca

.field public static final USIM_EFEXT1_TAG:I = 0xc2

.field public static final USIM_EFGRP_TAG:I = 0xc6

.field public static final USIM_EFGSD_TAG:I = 0xc8

.field public static final USIM_EFIAP_TAG:I = 0xc1

.field public static final USIM_EFPBC_TAG:I = 0xc5

.field public static final USIM_EFSNE_TAG:I = 0xc3

.field public static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_TYPE1_TAG:I = 0xa8

.field public static final USIM_TYPE2_TAG:I = 0xa9

.field public static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mANRPresentInIAP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPresentInIAP:Ljava/lang/Boolean;

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    goto :goto_0
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "HtcUsimPBRParser"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readPbrFileAndWait()V
    .locals 4

    const-string v1, "readPbrFileAndWait "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "3F007F105F3A"

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "7F105F3A"

    goto :goto_0

    :cond_1
    const-string v1, "phone is null "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getANRnums()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget v0, v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mANRNums:I

    goto :goto_0
.end method

.method public getEFADNrecNum(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mADNOrder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mADNOrder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getEFId(II)I
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v1, 0xa8

    :goto_1
    const/16 v4, 0xaa

    if-gt v1, v4, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getEFSFI(II)I
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/16 v2, 0xa8

    :goto_1
    const/16 v5, 0xaa

    if-gt v2, v5, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getEmailNums()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget v0, v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mEmailNums:I

    goto :goto_0
.end method

.method public getIAPTagNumber(II)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getPBRNum()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v5, :pswitch_data_0

    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->createPbrFile(Ljava/util/ArrayList;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    const-string v5, "load PBR success"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-static {v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iput-object v2, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v3, "3F007F105F3A"

    :goto_2
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v1, "3F007FFF5F3A"

    :goto_3
    const-string v5, "HtcUsimPBRParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_PBR_LOAD_DONE changePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    const/16 v6, 0x4f30

    const/4 v7, 0x1

    invoke-virtual {p0, v7, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :cond_2
    const-string v3, "7F105F3A"

    goto :goto_2

    :cond_3
    const-string v1, "7FFF5F3A"

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    const-string v5, "load PBR failed"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "load EF-PBR failed"

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isANRPresentInIAP(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailPresentInIAP()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPbrPresent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/16 v2, 0xa8

    :goto_2
    const/16 v5, 0xaa

    if-gt v2, v5, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public loadEfPBRFromUsim(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadEfPBRFromUsim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->readPbrFileAndWait()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public removeEFId(II)V
    .locals 6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/16 v2, 0xa8

    :goto_1
    const/16 v4, 0xaa

    if-gt v2, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setPbrPresent(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    return-void
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-void
.end method
