.class public Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;
.super Ljava/lang/Object;
.source "AssistedDialing_CDMA.java"


# static fields
.field public static final ASSISTED_DIALING_CONVERSION:I = 0x2

.field public static final GENERAL_CONVERSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AssistedDialing"

.field public static final NBPCD_CONVERSION:I = 0x3

.field private static final NBPCD_DBG:Z

.field public static final NO_CONVERSION:I


# instance fields
.field private bIsInputValid:Z

.field private bIsSystemReady:Z

.field private iConversionResult:I

.field m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

.field private szConvertedString:Ljava/lang/String;

.field private szHBPCDString:Ljava/lang/String;

.field private szNBPCDString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    const-string v2, "ro.debuggable.nbpcd"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->NBPCD_DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->szConvertedString:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->szNBPCDString:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->szHBPCDString:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->bIsInputValid:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->bIsSystemReady:Z

    .line 31
    iput v1, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->iConversionResult:I

    .line 33
    new-instance v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    return-void
.end method


# virtual methods
.method public DialingStringConversionExtNBPCD(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;Landroid/content/Context;)I
    .locals 5
    .parameter "szUserInput"
    .parameter "bIsContact"
    .parameter "szCurrentMCC"
    .parameter "bIsNBPCDAvailable"
    .parameter "bIsAssistedDialingOn"
    .parameter "szDeviceMDN"
    .parameter "cxtContext"

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v4, p7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Set_Context(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/InputCheck;-><init>()V

    .line 46
    .local v0, cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;
    new-instance v2, Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-direct {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;-><init>()V

    .line 47
    .local v2, cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;
    new-instance v1, Lcom/android/phone/ssdnbpcd/InputConversion;

    invoke-direct {v1}, Lcom/android/phone/ssdnbpcd/InputConversion;-><init>()V

    .line 50
    .local v1, cInputConversion:Lcom/android/phone/ssdnbpcd/InputConversion;
    invoke-virtual {v0, p2}, Lcom/android/phone/ssdnbpcd/InputCheck;->Set_IsInputFromContact(Z)V

    .line 51
    invoke-virtual {v2, p3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Set_CurrentCountry_MCC(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, p4}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Set_IsNBPCDAvailable(Z)V

    .line 53
    invoke-virtual {v2, p5}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Set_IsAssistedDialingOn(Z)V

    .line 54
    invoke-virtual {v2, p6}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Set_DeviceMDN(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/phone/ssdnbpcd/InputCheck;->IsValid(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->bIsInputValid:Z

    .line 58
    iget-boolean v4, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->bIsInputValid:Z

    if-nez v4, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v3

    .line 64
    :cond_1
    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->RetrieveSystemInfo()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->bIsSystemReady:Z

    .line 65
    iget-boolean v4, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->bIsSystemReady:Z

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/InputConversion;->StartConversion()I

    move-result v3

    iput v3, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->iConversionResult:I

    .line 75
    iget v3, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->iConversionResult:I

    packed-switch v3, :pswitch_data_0

    .line 90
    :goto_1
    iget v3, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->iConversionResult:I

    goto :goto_0

    .line 78
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/InputConversion;->Get_ConvertedString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->szConvertedString:Ljava/lang/String;

    goto :goto_1

    .line 84
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/InputConversion;->Get_NBPCDString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->szNBPCDString:Ljava/lang/String;

    .line 85
    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/InputConversion;->Get_HBPCDString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->szHBPCDString:Ljava/lang/String;

    goto :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Get_ConvertedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->szConvertedString:Ljava/lang/String;

    return-object v0
.end method

.method public Get_HBPCDString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->szHBPCDString:Ljava/lang/String;

    return-object v0
.end method

.method public Get_NBPCDString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->szNBPCDString:Ljava/lang/String;

    return-object v0
.end method
