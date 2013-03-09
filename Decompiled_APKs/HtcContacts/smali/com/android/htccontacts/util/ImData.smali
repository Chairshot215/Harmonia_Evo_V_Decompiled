.class public Lcom/android/htccontacts/util/ImData;
.super Ljava/lang/Object;
.source "ImData.java"


# static fields
.field public static IM_CHAT:I

.field public static VIDEO_CALL:I

.field private static VIDEO_STATUS_SHIFT:I


# instance fields
.field private mDataMimetype:Ljava/lang/String;

.field private mGenericVCIntent:Landroid/content/Intent;

.field private mIntentIm:Landroid/content/Intent;

.field private mIntentYahooVideoCall:Landroid/content/Intent;

.field private mnDataId:I

.field private mnPresence:I

.field private mnProtocol:I

.field private mnRawcontactId:I

.field private mnType:I

.field private msCustomProtocol:Ljava/lang/String;

.field private msDiaplsyName:Ljava/lang/String;

.field private msImAccount:Ljava/lang/String;

.field private msImHandle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0xa

    sput v0, Lcom/android/htccontacts/util/ImData;->IM_CHAT:I

    .line 33
    const/16 v0, 0xb

    sput v0, Lcom/android/htccontacts/util/ImData;->VIDEO_CALL:I

    .line 35
    const/4 v0, 0x5

    sput v0, Lcom/android/htccontacts/util/ImData;->VIDEO_STATUS_SHIFT:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "rawcontactId"
    .parameter "dataId"
    .parameter "imAccount"
    .parameter "imHandle"
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "presence"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget v0, Lcom/android/htccontacts/util/ImData;->IM_CHAT:I

    iput v0, p0, Lcom/android/htccontacts/util/ImData;->mnType:I

    .line 58
    iput p1, p0, Lcom/android/htccontacts/util/ImData;->mnRawcontactId:I

    .line 59
    iput p2, p0, Lcom/android/htccontacts/util/ImData;->mnDataId:I

    .line 60
    iput-object p3, p0, Lcom/android/htccontacts/util/ImData;->msImAccount:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/android/htccontacts/util/ImData;->msImHandle:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/android/htccontacts/util/ImData;->mnProtocol:I

    .line 63
    iput-object p6, p0, Lcom/android/htccontacts/util/ImData;->msCustomProtocol:Ljava/lang/String;

    .line 64
    iput p7, p0, Lcom/android/htccontacts/util/ImData;->mnPresence:I

    .line 66
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->buildImIntent(Lcom/android/htccontacts/util/ImData;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/ImData;->mIntentIm:Landroid/content/Intent;

    .line 67
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->buildYahooVideoCallIntent(Lcom/android/htccontacts/util/ImData;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/ImData;->mIntentYahooVideoCall:Landroid/content/Intent;

    .line 68
    return-void
.end method


# virtual methods
.method public getCustomProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/util/ImData;->msCustomProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getDataId()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/htccontacts/util/ImData;->mnDataId:I

    return v0
.end method

.method public getDataMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/htccontacts/util/ImData;->mDataMimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getDiaplsyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/htccontacts/util/ImData;->msDiaplsyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenericVCIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/htccontacts/util/ImData;->mGenericVCIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getImHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/htccontacts/util/ImData;->msImHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentIm()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/util/ImData;->mIntentIm:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentYahooVideoCall()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/htccontacts/util/ImData;->mIntentYahooVideoCall:Landroid/content/Intent;

    return-object v0
.end method

.method public getPresence()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/htccontacts/util/ImData;->mnPresence:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/htccontacts/util/ImData;->mnProtocol:I

    return v0
.end method

.method public getRawcontactId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/htccontacts/util/ImData;->mnRawcontactId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/htccontacts/util/ImData;->mnType:I

    return v0
.end method

.method public getYahooImPresence()I
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/htccontacts/util/ImData;->mnProtocol:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/htccontacts/util/ImData;->mnPresence:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/htccontacts/util/ImData;->IM_CHAT:I

    iget v1, p0, Lcom/android/htccontacts/util/ImData;->mnType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/htccontacts/util/ImData;->mnPresence:I

    sget v1, Lcom/android/htccontacts/util/ImData;->VIDEO_STATUS_SHIFT:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/htccontacts/util/ImData;->mnPresence:I

    goto :goto_0
.end method

.method public setDataMimetype(Ljava/lang/String;)V
    .locals 0
    .parameter "mimetype"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/htccontacts/util/ImData;->mDataMimetype:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setDiaplsyName(Ljava/lang/String;)V
    .locals 0
    .parameter "sDiaplsyName"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/htccontacts/util/ImData;->msDiaplsyName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setGenericVCIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/htccontacts/util/ImData;->mGenericVCIntent:Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/htccontacts/util/ImData;->mnType:I

    .line 128
    return-void
.end method
