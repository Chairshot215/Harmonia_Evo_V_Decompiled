.class Lcom/android/phone/ssdnbpcd/InputConversion;
.super Ljava/lang/Object;
.source "InputConversion.java"


# static fields
.field private static final ASSISTED_DIALING_CONVERSION:I = 0x2

.field private static final CUSTOMER_BAL_DIAL_CONVERT:Ljava/lang/String; = null

.field private static final CUSTOMER_DATA_DIAL_CONVERT:Ljava/lang/String; = null

.field private static final CUSTOMER_MIN_DIAL_CONVERT:Ljava/lang/String; = null

.field private static final CUSTOMER_PMT_DIAL_CONVERT:Ljava/lang/String; = null

.field private static final CUSTOMER_SERVICE_DIAL_CONVERT:Ljava/lang/String; = null

.field private static final GENERAL_CONVERSION:I = 0x1

.field private static final IS_CURRENT_COUNTRY_NDD:I = 0x1

.field private static final IS_NOT_NDD:I = 0x0

.field static final LOG_GSM_TAG:Ljava/lang/String; = "HtcGSMAssistedDialing"

.field private static final NBPCD_CONVERSION:I = 0x3

.field private static final NBPCD_DBG:Z

.field private static final NO_CONVERSION:I

.field private static final PLUS_CODE:Ljava/lang/Character;

.field private static final PLUS_US_CC:Ljava/lang/String;

.field private static final PLUS_US_NDD:Ljava/lang/String;

.field private static final RESULT_MATCH:I

.field private static final US_CC:Ljava/lang/Character;

.field private static final US_IDD:Ljava/lang/String;

.field private static final US_NDD:Ljava/lang/Character;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneType:I

.field m_cAreaCodeCheck:Lcom/android/phone/ssdnbpcd/AreaCodeCheck;

.field m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

.field m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

.field m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

.field m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

.field m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

.field private m_iFilteredInputStringLength:I

.field private m_szBufFilteredInputString:Ljava/lang/StringBuffer;

.field private m_szConvertedString:Ljava/lang/String;

.field private m_szFilteredInputString:Ljava/lang/String;

.field private m_szHBPCDString:Ljava/lang/String;

.field private m_szNBPCDString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x31

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    .line 42
    new-instance v2, Ljava/lang/String;

    const-string v3, "+1"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_US_CC:Ljava/lang/String;

    .line 43
    new-instance v2, Ljava/lang/String;

    const-string v3, "+1"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_US_NDD:Ljava/lang/String;

    .line 44
    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->US_CC:Ljava/lang/Character;

    .line 45
    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->US_NDD:Ljava/lang/Character;

    .line 46
    new-instance v2, Ljava/lang/String;

    const-string v3, "011"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->US_IDD:Ljava/lang/String;

    .line 50
    new-instance v2, Ljava/lang/String;

    const-string v3, "19085594899"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_SERVICE_DIAL_CONVERT:Ljava/lang/String;

    .line 51
    const-string v2, "ro.debuggable.nbpcd"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/ssdnbpcd/InputConversion;->NBPCD_DBG:Z

    .line 58
    new-instance v0, Ljava/lang/String;

    const-string v1, "18006142000"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_BAL_DIAL_CONVERT:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/String;

    const-string v1, "18887829687"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_DATA_DIAL_CONVERT:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/String;

    const-string v1, "18005142001"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_MIN_DIAL_CONVERT:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/String;

    const-string v1, "18002491001"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_PMT_DIAL_CONVERT:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szBufFilteredInputString:Ljava/lang/StringBuffer;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    .line 33
    new-instance v0, Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/InputCheck;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    .line 34
    new-instance v0, Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/SystemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    .line 35
    new-instance v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cAreaCodeCheck:Lcom/android/phone/ssdnbpcd/AreaCodeCheck;

    .line 36
    new-instance v0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    .line 37
    new-instance v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    .line 38
    new-instance v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    return-void
.end method

.method private CustomerNumberConversion()I
    .locals 3

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputConversion::CustomerNumberConversion [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    const-string v1, "#225"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_BAL_DIAL_CONVERT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    const-string v1, "#3282"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_DATA_DIAL_CONVERT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1390
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    const-string v1, "#646"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_MIN_DIAL_CONVERT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1392
    :cond_3
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    const-string v1, "#768"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_PMT_DIAL_CONVERT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1395
    :cond_4
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1396
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:InputConversion::CustomerNumberConversion, [m_szConvertedString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputConversion::CustomerNumberConversion [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private CustomerServiceConversion()I
    .locals 4

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::CustomerServiceConversion [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 980
    .local v0, szCurrentCountry_IDD:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v0

    .line 982
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputConversion::CustomerServiceConversion [szCurrentCountry_IDD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_SERVICE_DIAL_CONVERT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 987
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 988
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputConversion::CustomerServiceConversion, [m_szConvertedString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::CustomerServiceConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method Get_ConvertedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    return-object v0
.end method

.method Get_HBPCDString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    return-object v0
.end method

.method Get_NBPCDString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    return-object v0
.end method

.method GsmUmtsConversion()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1061
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1062
    const-string v2, "HtcGSMAssistedDialing"

    const-string v3, "[msg]:InputConversion::GsmUmtsConversion [+++]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_0
    const/4 v0, 0x0

    .line 1067
    .local v0, iConversionResult:I
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsVoiceMailNumber()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->GsmUmts_VoiceMailConversion()I

    move-result v0

    move v1, v0

    .line 1113
    .end local v0           #iConversionResult:I
    .local v1, iConversionResult:I
    :goto_0
    return v1

    .line 1073
    .end local v1           #iConversionResult:I
    .restart local v0       #iConversionResult:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsCustomerServiceNumber()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1074
    invoke-direct {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->CustomerServiceConversion()I

    move-result v0

    move v1, v0

    .line 1075
    .end local v0           #iConversionResult:I
    .restart local v1       #iConversionResult:I
    goto :goto_0

    .line 1078
    .end local v1           #iConversionResult:I
    .restart local v0       #iConversionResult:I
    :cond_2
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsInputCustomerConvertNumber()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1079
    invoke-direct {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->CustomerNumberConversion()I

    move-result v0

    move v1, v0

    .line 1080
    .end local v0           #iConversionResult:I
    .restart local v1       #iConversionResult:I
    goto :goto_0

    .line 1085
    .end local v1           #iConversionResult:I
    .restart local v0       #iConversionResult:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->GsmUmts_LocalNumberConversion()I

    move-result v0

    .line 1086
    if-eqz v0, :cond_4

    move v1, v0

    .line 1087
    .end local v0           #iConversionResult:I
    .restart local v1       #iConversionResult:I
    goto :goto_0

    .line 1091
    .end local v1           #iConversionResult:I
    .restart local v0       #iConversionResult:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->GsmUmts_InternationalNumberConversion()I

    move-result v0

    .line 1092
    if-eqz v0, :cond_5

    move v1, v0

    .line 1093
    .end local v0           #iConversionResult:I
    .restart local v1       #iConversionResult:I
    goto :goto_0

    .line 1097
    .end local v1           #iConversionResult:I
    .restart local v0       #iConversionResult:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->GsmUmts_NANPNumberConversion()I

    move-result v0

    .line 1098
    if-eqz v0, :cond_6

    move v1, v0

    .line 1099
    .end local v0           #iConversionResult:I
    .restart local v1       #iConversionResult:I
    goto :goto_0

    .line 1103
    .end local v1           #iConversionResult:I
    .restart local v0       #iConversionResult:I
    :cond_6
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsInputFromContact()Z

    move-result v2

    if-ne v2, v4, :cond_7

    .line 1104
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->GsmUmts_StoredNumberConversion()I

    move-result v0

    .line 1105
    if-eqz v0, :cond_7

    move v1, v0

    .line 1106
    .end local v0           #iConversionResult:I
    .restart local v1       #iConversionResult:I
    goto :goto_0

    .line 1110
    .end local v1           #iConversionResult:I
    .restart local v0       #iConversionResult:I
    :cond_7
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1111
    const-string v2, "HtcGSMAssistedDialing"

    const-string v3, "[msg]:InputConversion::GsmUmtsConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v1, v0

    .line 1113
    .end local v0           #iConversionResult:I
    .restart local v1       #iConversionResult:I
    goto :goto_0
.end method

.method GsmUmts_InternationalNumberConversion()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1188
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_InternationalNumberConversion [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainReferenceIDD(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1196
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1199
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_InternationalNumberConversion, Input begins with reference IDD."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_InternationalNumberConversion [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_1
    const/4 v0, 0x2

    .line 1212
    :goto_0
    return v0

    .line 1207
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1208
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_InternationalNumberConversion, No conversion."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_InternationalNumberConversion [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method GsmUmts_LocalNumberConversion()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1155
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_LocalNumberConversion [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainReferenceIDD(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1163
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1166
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_LocalNumberConversion, Input begins with + and followed by current country code."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_LocalNumberConversion [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_1
    const/4 v0, 0x2

    .line 1179
    :goto_0
    return v0

    .line 1174
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1175
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_LocalNumberConversion, No conversion."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string v0, "HtcGSMAssistedDialing"

    const-string v1, "[msg]:InputConversion::GsmUmts_LocalNumberConversion [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method GsmUmts_NANPNumberConversion()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1220
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1221
    const-string v2, "HtcGSMAssistedDialing"

    const-string v3, "[msg]:InputConversion::GsmUmts_NANPNumberConversion [+++]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1228
    .local v0, szCurrentCountry_IDD:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_US_CC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1230
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1232
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1233
    const-string v2, "HtcGSMAssistedDialing"

    const-string v3, "[msg]:InputConversion::GsmUmts_NANPNumberConversion, Input begins with + and followed by US country code."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string v2, "HtcGSMAssistedDialing"

    const-string v3, "[msg]:InputConversion::GsmUmts_NANPNumberConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_1
    :goto_0
    return v1

    .line 1242
    :cond_2
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainCurrentIDD(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1244
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v0

    .line 1245
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDDLength()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 1248
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cAreaCodeCheck:Lcom/android/phone/ssdnbpcd/AreaCodeCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDDLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->ContainNANPAreaCode(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1250
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1252
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1253
    const-string v2, "HtcGSMAssistedDialing"

    const-string v3, "[msg]:InputConversion::GsmUmts_NANPNumberConversion, Input begins with local IDD and followed by US country code."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string v2, "HtcGSMAssistedDialing"

    const-string v3, "[msg]:InputConversion::GsmUmts_NANPNumberConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1264
    :cond_3
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainReferenceIDD(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1265
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1268
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1269
    const-string v1, "HtcGSMAssistedDialing"

    const-string v2, "[msg]:InputConversion::GsmUmts_NANPNumberConversion, Input begins with reference IDD."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const-string v1, "HtcGSMAssistedDialing"

    const-string v2, "[msg]:InputConversion::GsmUmts_NANPNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_4
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1276
    :cond_5
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    const-string v2, "HtcGSMAssistedDialing"

    const-string v3, "[msg]:InputConversion::GsmUmts_NANPNumberConversion, No conversion."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v2, "HtcGSMAssistedDialing"

    const-string v3, "[msg]:InputConversion::GsmUmts_NANPNumberConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method GsmUmts_StoredNumberConversion()I
    .locals 10

    .prologue
    const/4 v6, 0x2

    .line 1290
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1291
    const-string v7, "HtcGSMAssistedDialing"

    const-string v8, "[msg]:InputConversion::GsmUmts_StoredNumberConversion [+++]."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    const/4 v0, 0x0

    .line 1294
    .local v0, bIsCurrentCountryIDD:Z
    const/4 v2, 0x0

    .line 1295
    .local v2, iIsCurrentCountryNDD:I
    const/4 v1, 0x0

    .line 1296
    .local v1, iIDDLength:I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1302
    .local v3, szCurrentCountry_IDD:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainReferenceIDD(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v9}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1306
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1307
    const-string v7, "HtcGSMAssistedDialing"

    const-string v8, "[msg]:InputConversion::GsmUmts_StoredNumberConversion, Input begins with Reference IDD."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v7, "HtcGSMAssistedDialing"

    const-string v8, "[msg]:InputConversion::GsmUmts_StoredNumberConversion [---]."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_1
    :goto_0
    return v6

    .line 1320
    :cond_2
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NDD()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NDD()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1322
    new-instance v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_CountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v5, szReferenceCountryCode:Ljava/lang/String;
    iget v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NationalNumberLength()I

    move-result v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v9}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NDDLength()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_3

    .line 1326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v9}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NDDLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1327
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1328
    const-string v7, "HtcGSMAssistedDialing"

    const-string v8, "[msg]:InputConversion::GsmUmts_StoredNumberConversion, Input begins with Reference NDD, and input length is NNL plus ref. NDD."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const-string v7, "HtcGSMAssistedDialing"

    const-string v8, "[msg]:InputConversion::GsmUmts_StoredNumberConversion [---]."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1339
    .end local v5           #szReferenceCountryCode:Ljava/lang/String;
    :cond_3
    iget v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NationalNumberLength()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 1341
    new-instance v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_CountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1343
    .restart local v5       #szReferenceCountryCode:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1345
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1346
    const-string v7, "HtcGSMAssistedDialing"

    const-string v8, "[msg]:InputConversion::GsmUmts_StoredNumberConversion, Input length is the same as reference NNL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string v7, "HtcGSMAssistedDialing"

    const-string v8, "[msg]:InputConversion::GsmUmts_StoredNumberConversion [---]."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1357
    .end local v5           #szReferenceCountryCode:Ljava/lang/String;
    :cond_4
    iget v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NationalNumberLength()I

    move-result v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v9}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_AreaCodeLength()I

    move-result v9

    sub-int/2addr v8, v9

    if-ne v7, v8, :cond_5

    .line 1359
    new-instance v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_CountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1360
    .restart local v5       #szReferenceCountryCode:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_AreaCode()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v4, szReferenceCountryAreaCode:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1365
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1366
    const-string v7, "HtcGSMAssistedDialing"

    const-string v8, "[msg]:InputConversion::GsmUmts_StoredNumberConversion, Input length is the same as reference NNL minus area code length"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const-string v7, "HtcGSMAssistedDialing"

    const-string v8, "[msg]:InputConversion::GsmUmts_StoredNumberConversion [---]."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1373
    .end local v4           #szReferenceCountryAreaCode:Ljava/lang/String;
    .end local v5           #szReferenceCountryCode:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v6}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1374
    const-string v6, "HtcGSMAssistedDialing"

    const-string v7, "[msg]:InputConversion::GsmUmts_StoredNumberConversion, No conversion."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const-string v6, "HtcGSMAssistedDialing"

    const-string v7, "[msg]:InputConversion::GsmUmts_StoredNumberConversion [---]."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method GsmUmts_VoiceMailConversion()I
    .locals 4

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    const-string v1, "HtcGSMAssistedDialing"

    const-string v2, "[msg]:InputConversion::VoiceMailConversion [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1125
    .local v0, szDeviceMDN:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_DeviceMDN()Ljava/lang/String;

    move-result-object v0

    .line 1126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1128
    const-string v1, "HtcGSMAssistedDialing"

    const-string v2, "Mdn not record in sim card, get CDMA phone number!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v1, "ril.cdmaphoneapp.mdn"

    const-string v2, "0000000000"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    :cond_1
    const-string v1, "HtcGSMAssistedDialing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputConversion::VoiceMailConversion [szDeviceMDN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    sget-object v1, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_US_NDD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1135
    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 1140
    :goto_0
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1141
    const-string v1, "HtcGSMAssistedDialing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputConversion::VoiceMailConversion, [m_szConvertedString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string v1, "HtcGSMAssistedDialing"

    const-string v2, "[msg]:InputConversion::VoiceMailConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1137
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_US_NDD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    goto :goto_0
.end method

.method HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "szFilteredInputString"

    .prologue
    .line 999
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1000
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[msg]:InputConversion::HBPCDConversion [+++]."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1003
    .local v1, szHBPCDString:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1004
    .local v0, szCurrentCountry_IDD:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1006
    .local v2, szUserSelected_IDD:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v0

    .line 1009
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->RetrieveUserSelectedIDD()Ljava/lang/String;

    move-result-object v2

    .line 1010
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    :goto_0
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1018
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[msg]:InputConversion::HBPCDConversion, [szHBPCDString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[msg]:InputConversion::HBPCDConversion [---]."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_1
    return-object v1

    .line 1014
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method NANPCountry()I
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NANPCountry [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, iConversionResult:I
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->VZW_NANPNumberConversion()I

    move-result v0

    .line 129
    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->VZW_InternationalNumberConversion()I

    move-result v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NANPCountry [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    return v0
.end method

.method NonNANPCountry()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 145
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[msg]:InputConversion::NonNANPCountry [+++]."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 151
    .local v0, iConversionResult:I
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsVoiceMailNumber()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->VoiceMailConversion()I

    move-result v0

    move v2, v0

    .line 195
    :goto_0
    return v2

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsCustomerServiceNumber()Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 160
    const-string v3, "HtcCdmaAssistedDialing"

    const-string v4, "CustomerService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, szCurrentCountry_IDD:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/ssdnbpcd/InputConversion;->CUSTOMER_SERVICE_DIAL_CONVERT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    goto :goto_0

    .line 167
    .end local v1           #szCurrentCountry_IDD:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->NonVZW_NationalNumberConversion()I

    move-result v0

    .line 168
    if-eqz v0, :cond_3

    move v2, v0

    .line 169
    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->NonVZW_InternationalNumberConversion()I

    move-result v0

    .line 174
    if-eqz v0, :cond_4

    move v2, v0

    .line 175
    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->NonVZW_NANPNumberConversion()I

    move-result v0

    .line 180
    if-eqz v0, :cond_5

    move v2, v0

    .line 181
    goto :goto_0

    .line 185
    :cond_5
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsInputFromContact()Z

    move-result v3

    if-ne v3, v2, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->NonVZW_StoredNumberConversion()I

    move-result v0

    .line 187
    if-eqz v0, :cond_6

    move v2, v0

    .line 188
    goto :goto_0

    .line 192
    :cond_6
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 193
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::NonNANPCountry [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v2, v0

    .line 195
    goto :goto_0
.end method

.method NonVZW_InternationalNumberConversion()I
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 533
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[msg]:InputConversion::NonVZW_InternationalNumberConversion [+++]."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 542
    .local v0, szCurrentCountry_IDD:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v4, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 543
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 545
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v0

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 552
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::NonVZW_InternationalNumberConversion, Input begins with + and followed by country code."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::NonVZW_InternationalNumberConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_1
    :goto_0
    return v1

    .line 559
    :cond_2
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 561
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 562
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[msg]:InputConversion::NonVZW_NationalNumberConversion, [NBPCD dialing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][HBPCD dialing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v2

    .line 567
    goto :goto_0

    .line 576
    :cond_4
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainReferenceIDD(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_7

    .line 578
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v3

    if-nez v3, :cond_5

    .line 579
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v2

    if-ne v2, v5, :cond_7

    .line 580
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v0

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 584
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::NonVZW_InternationalNumberConversion, Input begins with reference IDD."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::NonVZW_InternationalNumberConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 594
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 595
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 596
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 597
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[msg]:InputConversion::NonVZW_NationalNumberConversion, [NBPCD dialing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][HBPCD dialing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v1, v2

    .line 600
    goto/16 :goto_0

    .line 604
    :cond_7
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 605
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_InternationalNumberConversion, No conversion."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_InternationalNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method NonVZW_NANPNumberConversion()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 617
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NANPNumberConversion [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 626
    .local v0, szCurrentCountry_IDD:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_US_CC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 628
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v0

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 635
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NANPNumberConversion, Input begins with + and followed by NANP country code."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NANPNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1
    const/4 v1, 0x2

    .line 659
    :goto_0
    return v1

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 644
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 645
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 646
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 647
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputConversion::NonVZW_NationalNumberConversion, [NBPCD dialing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][HBPCD dialing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    .line 654
    :cond_4
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 655
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NANPNumberConversion, No conversion."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NANPNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method NonVZW_NationalNumberConversion()I
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v5, 0x1

    .line 422
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::NonVZW_NationalNumberConversion [+++]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 430
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainCurrentCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 432
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 435
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDDLength()I

    move-result v1

    if-lez v1, :cond_2

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCodeLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NationalNumberConversion, Input begins with + and followed by current country code."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1
    :goto_1
    return v0

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCodeLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    goto :goto_0

    .line 448
    :cond_3
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 450
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputConversion::NonVZW_NationalNumberConversion, [NBPCD dialing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][HBPCD dialing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    .line 456
    goto :goto_1

    .line 464
    :cond_5
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainCurrentIDD(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 467
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDDLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainCurrentCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_7

    .line 469
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsInputFromContact()Z

    move-result v2

    if-nez v2, :cond_7

    .line 470
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDDLength()I

    move-result v1

    if-lez v1, :cond_6

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDDLength()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCodeLength()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 477
    :goto_2
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NationalNumberConversion, Input begins with local IDD and followed by local country code."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 474
    :cond_6
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDDLength()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCodeLength()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    goto :goto_2

    .line 489
    :cond_7
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainReferenceIDD(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_b

    .line 490
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainCurrentCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_b

    .line 492
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 495
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v1

    if-ne v1, v5, :cond_b

    .line 496
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDDLength()I

    move-result v1

    if-lez v1, :cond_8

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCodeLength()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 500
    :cond_8
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NationalNumberConversion, Input begins with reference IDD and followed by local country code."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 507
    :cond_9
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 512
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputConversion::NonVZW_NationalNumberConversion, [NBPCD dialing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][HBPCD dialing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v0, v1

    .line 515
    goto/16 :goto_1

    .line 520
    :cond_b
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 521
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputConversion::NonVZW_NationalNumberConversion, No conversion."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method NonVZW_StoredNumberConversion()I
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v13, 0x1

    .line 668
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 669
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[msg]:InputConversion::NonVZW_StoredNumberConversion [+++]."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    const/4 v0, 0x0

    .line 672
    .local v0, bIsCurrentCountryIDD:Z
    const/4 v2, 0x0

    .line 673
    .local v2, iIsCurrentCountryNDD:I
    const/4 v1, 0x0

    .line 674
    .local v1, iIDDLength:I
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 681
    .local v4, szCurrentCountry_IDD:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v11, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v11}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v13, :cond_8

    .line 683
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 686
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainCurrentCountryCode(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v13, :cond_3

    .line 687
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDDLength()I

    move-result v8

    if-lez v8, :cond_2

    .line 688
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v9}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDD()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCodeLength()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 694
    :goto_0
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 695
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_NationalNumberConversion, Input begins with + and followed by local country code."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_NationalNumberConversion [---]."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_1
    :goto_1
    return v7

    .line 691
    :cond_2
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v9}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCodeLength()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    goto :goto_0

    .line 701
    :cond_3
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v4

    .line 703
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 705
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 706
    sget-boolean v8, Lcom/android/phone/ssdnbpcd/InputConversion;->NBPCD_DBG:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion, Input begins with + but not followed by local country code."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_4
    sget-boolean v8, Lcom/android/phone/ssdnbpcd/InputConversion;->NBPCD_DBG:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 713
    :cond_5
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 715
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 716
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 717
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 718
    sget-boolean v7, Lcom/android/phone/ssdnbpcd/InputConversion;->NBPCD_DBG:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[msg]:InputConversion::NonVZW_StoredNumberConversion, [NBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][HBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_6
    sget-boolean v7, Lcom/android/phone/ssdnbpcd/InputConversion;->NBPCD_DBG:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v7, v8

    .line 721
    goto/16 :goto_1

    .line 732
    :cond_8
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v11, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainCurrentIDD(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v13, :cond_b

    .line 733
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDDLength()I

    move-result v10

    if-lez v10, :cond_9

    .line 734
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDDLength()I

    move-result v1

    .line 737
    :cond_9
    const/4 v0, 0x1

    .line 743
    :cond_a
    :goto_2
    if-lez v1, :cond_12

    .line 744
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v11, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainCurrentCountryCode(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 746
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 749
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDDLength()I

    move-result v8

    if-lez v8, :cond_c

    .line 750
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v9}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDD()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCodeLength()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 756
    :goto_3
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 757
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion, Input begins with Current/Reference IDD and followed by local country code."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 739
    :cond_b
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v11, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainReferenceIDD(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v13, :cond_a

    .line 740
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v1

    goto :goto_2

    .line 753
    :cond_c
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v9}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCodeLength()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    goto :goto_3

    .line 762
    :cond_d
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 764
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 765
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 766
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 767
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[msg]:InputConversion::NonVZW_StoredNumberConversion, [NBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][HBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v7, v8

    .line 770
    goto/16 :goto_1

    .line 775
    :cond_f
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 778
    if-nez v0, :cond_12

    .line 779
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v4

    .line 781
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDDLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 783
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 784
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion, Input begins with with Reference IDD but not followed by local country code."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 791
    :cond_10
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 793
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 794
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 795
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 796
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[msg]:InputConversion::NonVZW_StoredNumberConversion, [NBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][HBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v7, v8

    .line 799
    goto/16 :goto_1

    .line 812
    :cond_12
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v11, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainCurrent_ReferenceNDD(Ljava/lang/String;)I

    move-result v2

    .line 813
    if-lez v2, :cond_18

    .line 814
    new-instance v3, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 815
    .local v3, szCurrentCountryCode:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_CountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 817
    .local v6, szReferenceCountryCode:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_14

    .line 818
    iget v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    iget-object v11, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v11}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NationalNumberLength()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v12}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NDDLength()I

    move-result v12

    add-int/2addr v11, v12

    if-ne v10, v11, :cond_18

    .line 819
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 820
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[msg]:InputConversion::NonVZW_StoredNumberConversion, Input begins with Reference/Current NDD, Ref and Current CC are the same, and input length is NNL plus ref. NDD, No conversion."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v7, v9

    .line 823
    goto/16 :goto_1

    .line 827
    :cond_14
    iget v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    iget-object v11, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v11}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NationalNumberLength()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v12}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NDDLength()I

    move-result v12

    add-int/2addr v11, v12

    if-ne v10, v11, :cond_18

    .line 829
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-nez v10, :cond_16

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 832
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v4

    .line 834
    if-ne v2, v13, :cond_15

    .line 835
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDDLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 841
    :goto_4
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 842
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion, Input begins with Reference/Current NDD, Ref and Current CC are NOT the same, and input length is NNL plus Ref. NDD."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 838
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NDDLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    goto :goto_4

    .line 848
    :cond_16
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 850
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 851
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 852
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 853
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[msg]:InputConversion::NonVZW_StoredNumberConversion, [NBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][HBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move v7, v8

    .line 856
    goto/16 :goto_1

    .line 866
    .end local v3           #szCurrentCountryCode:Ljava/lang/String;
    .end local v6           #szReferenceCountryCode:Ljava/lang/String;
    :cond_18
    iget v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    iget-object v11, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v11}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NationalNumberLength()I

    move-result v11

    if-ne v10, v11, :cond_1b

    .line 867
    new-instance v3, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 868
    .restart local v3       #szCurrentCountryCode:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_CountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 870
    .restart local v6       #szReferenceCountryCode:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1b

    .line 872
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 875
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v4

    .line 877
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 879
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 880
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion, Input begins with area code, Ref and Current CC are NOT the same, and input length is NNL."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 886
    :cond_19
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 888
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 889
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 890
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 891
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[msg]:InputConversion::NonVZW_StoredNumberConversion, [NBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][HBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move v7, v8

    .line 894
    goto/16 :goto_1

    .line 904
    .end local v3           #szCurrentCountryCode:Ljava/lang/String;
    .end local v6           #szReferenceCountryCode:Ljava/lang/String;
    :cond_1b
    iget v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    iget-object v11, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v11}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NationalNumberLength()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v12}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_AreaCodeLength()I

    move-result v12

    sub-int/2addr v11, v12

    if-ne v10, v11, :cond_1e

    .line 905
    new-instance v3, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 906
    .restart local v3       #szCurrentCountryCode:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_CountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 907
    .restart local v6       #szReferenceCountryCode:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_AreaCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 909
    .local v5, szReferenceCountryAreaCode:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1e

    .line 911
    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v10

    if-nez v10, :cond_1c

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v10}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 914
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v4

    .line 916
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 918
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 919
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion, Input begins with area code, Ref and Current CC are NOT the same, and input length is NNL."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v8, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v8}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 925
    :cond_1c
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 927
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 928
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 929
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 930
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[msg]:InputConversion::NonVZW_StoredNumberConversion, [NBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][HBPCD dialing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v9, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move v7, v8

    .line 933
    goto/16 :goto_1

    .line 938
    .end local v3           #szCurrentCountryCode:Ljava/lang/String;
    .end local v5           #szReferenceCountryAreaCode:Ljava/lang/String;
    .end local v6           #szReferenceCountryCode:Ljava/lang/String;
    :cond_1e
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 939
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[msg]:InputConversion::NonVZW_StoredNumberConversion, No conversion."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v7, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v7}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[msg]:InputConversion::NonVZW_StoredNumberConversion [---]."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move v7, v9

    .line 943
    goto/16 :goto_1
.end method

.method StartConversion()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 69
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::StartConversion [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, iConversionResult:I
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_FileteredStringLength()I

    move-result v1

    iput v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    .line 76
    iget v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    if-gtz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::StartConversion, Empty filtered string, [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, 0x0

    .line 114
    :goto_0
    return v1

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_FileteredString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szBufFilteredInputString:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    sget-boolean v1, Lcom/android/phone/ssdnbpcd/InputConversion;->NBPCD_DBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputConversion::StartConversion, [m_szBufFilteredInputString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szBufFilteredInputString:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [m_szFilteredInputString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 91
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->mPhoneType:I

    .line 92
    iget v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->mPhoneType:I

    if-ne v1, v4, :cond_7

    .line 94
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsVoiceMailNumber()Z

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsCustomerServiceNumber()Z

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsInputCustomerConvertNumber()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->GsmUmtsConversion()I

    move-result v0

    .line 111
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::StartConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v0

    .line 114
    goto/16 :goto_0

    .line 100
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    :cond_7
    iget v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 104
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->IsVZWCDMANetworkConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 105
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->NonNANPCountry()I

    move-result v0

    goto :goto_1

    .line 108
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/InputConversion;->NANPCountry()I

    move-result v0

    goto :goto_1
.end method

.method VZW_InternationalNumberConversion()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x1

    .line 294
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[msg]:InputConversion::VZW_InternationalNumberConversion [+++]."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v6, Lcom/android/phone/ssdnbpcd/InputConversion;->US_IDD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 301
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion, Input begins with US IDD."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion [---]."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    :goto_0
    return v2

    .line 312
    :cond_2
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v6, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_8

    .line 313
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v6, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainCountryCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v6, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainUserAddedCountryCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 315
    :cond_3
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/ssdnbpcd/InputConversion;->US_IDD:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 319
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion, Input begins with + and followed by country code."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion [---]."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v2, v3

    .line 323
    goto :goto_0

    .line 326
    :cond_5
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 328
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 329
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 330
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 331
    sget-boolean v2, Lcom/android/phone/ssdnbpcd/InputConversion;->NBPCD_DBG:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[msg]:InputConversion::VZW_InternationalNumberConversion, [NBPCD dialing = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "][HBPCD dialing = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_6
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::VZW_InternationalNumberConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v2, v4

    .line 334
    goto/16 :goto_0

    .line 343
    :cond_8
    iget v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_d

    .line 344
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v6, Lcom/android/phone/ssdnbpcd/InputConversion;->US_CC:Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 345
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v6, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainCountryCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    iget-object v6, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainUserAddedCountryCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 348
    :cond_9
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/ssdnbpcd/InputConversion;->US_IDD:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 353
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion, Input length >= 11 not begin with 1 and followed by country code."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion [---]."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v2, v3

    .line 356
    goto/16 :goto_0

    .line 358
    :cond_b
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 361
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 362
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 363
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[msg]:InputConversion::VZW_InternationalNumberConversion, [NBPCD dialing = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "][HBPCD dialing = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::VZW_InternationalNumberConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move v2, v4

    .line 366
    goto/16 :goto_0

    .line 377
    :cond_d
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cInputCheck:Lcom/android/phone/ssdnbpcd/InputCheck;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/InputCheck;->Get_IsInputFromContact()Z

    move-result v5

    if-ne v5, v7, :cond_12

    .line 378
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v6, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->ContainNonUSIDD(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_12

    .line 379
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cIDD_NDDCheck:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->Get_NonUSIDDLength()I

    move-result v0

    .line 380
    .local v0, NonUSIDDLenth:I
    if-lez v0, :cond_12

    .line 381
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, szNoUSIDDFilteredInputString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    invoke-virtual {v5, v1}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainCountryCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cCountryCodeCheck:Lcom/android/phone/ssdnbpcd/CountryCodeCheck;

    invoke-virtual {v5, v1}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->ContainUserAddedCountryCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 384
    :cond_e
    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v5}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/ssdnbpcd/InputConversion;->US_IDD:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 388
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 389
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion, [Dialing from Contact], Input begins with Non US IDD and followed by country code."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion [---]."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v2, v3

    .line 392
    goto/16 :goto_0

    .line 394
    :cond_10
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 397
    invoke-virtual {p0, v1}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 398
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 399
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[msg]:InputConversion::VZW_InternationalNumberConversion, [NBPCD dialing = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "][HBPCD dialing = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::VZW_InternationalNumberConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v2, v4

    .line 402
    goto/16 :goto_0

    .line 409
    .end local v0           #NonUSIDDLenth:I
    .end local v1           #szNoUSIDDFilteredInputString:Ljava/lang/String;
    :cond_12
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion, No conversion."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v3}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[msg]:InputConversion::VZW_InternationalNumberConversion [---]."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method VZW_NANPNumberConversion()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 203
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::VZW_NANPNumberConversion [+++]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 211
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::VZW_NANPNumberConversion, Input length 7, NANP number."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::VZW_NANPNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    :goto_0
    return v0

    .line 221
    :cond_2
    iget v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 222
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 223
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cAreaCodeCheck:Lcom/android/phone/ssdnbpcd/AreaCodeCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->ContainNANPAreaCode(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::VZW_NANPNumberConversion, Input length 10 with NANP area code, NANP number."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::VZW_NANPNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_3
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->US_NDD:Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_4

    .line 238
    iget v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 239
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cAreaCodeCheck:Lcom/android/phone/ssdnbpcd/AreaCodeCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->ContainNANPAreaCode(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_4

    .line 240
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::VZW_NANPNumberConversion, Input begins with US NDD, length is 11, and contains NANP area code."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputConversion::VZW_NANPNumberConversion [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 254
    :cond_4
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->PLUS_US_NDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_9

    .line 255
    iget v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_iFilteredInputStringLength:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    .line 256
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cAreaCodeCheck:Lcom/android/phone/ssdnbpcd/AreaCodeCheck;

    iget-object v3, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->ContainNANPAreaCode(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_9

    .line 258
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsAssistedDialingOn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 261
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 263
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[msg]:InputConversion::VZW_NANPNumberConversion, Input begins with US NDD and length is 11."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[msg]:InputConversion::VZW_NANPNumberConversion [---]."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v1

    .line 266
    goto/16 :goto_0

    .line 268
    :cond_6
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_IsNBPCDAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 270
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szNBPCDString:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szFilteredInputString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ssdnbpcd/InputConversion;->HBPCDConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 273
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/InputConversion;->NBPCD_DBG:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:InputConversion::VZW_NANPNumberConversion, [NBPCD dialing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][HBPCD dialing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szHBPCDString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_7
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputConversion::VZW_NANPNumberConversion [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_8
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 283
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputConversion::VZW_NANPNumberConversion, No conversion."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputConversion::VZW_NANPNumberConversion [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method VoiceMailConversion()I
    .locals 5

    .prologue
    .line 951
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 952
    .local v0, szCurrentCountry_IDD:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_DeviceMDN()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 953
    .local v1, szDeviceMDN:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[msg]:InputConversion::VoiceMailConversion [szDeviceMDN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v0

    .line 957
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[msg]:InputConversion::VoiceMailConversion [szCurrentCountry_IDD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputConversion;->US_CC:Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    .line 961
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[msg]:InputConversion::VoiceMailConversion, [m_szConvertedString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_szConvertedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputConversion;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputConversion::VoiceMailConversion [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
