.class Lcom/android/phone/ssdnbpcd/ClassSharedInformation;
.super Ljava/lang/Object;
.source "ClassSharedInformation.java"


# static fields
.field static final CONTENT_URI_CURRENT_COUNTRY_TABLE:Landroid/net/Uri; = null

.field static final CONTENT_URI_NANP_TABLE:Landroid/net/Uri; = null

.field static final CONTENT_URI_NON_US_IDD_TABLE:Landroid/net/Uri; = null

.field static final CONTENT_URI_REFERENECE_COUNTRY_TABLE:Landroid/net/Uri; = null

#the value of this static final field might be set in the static constructor
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "AssistedDialing"

.field static final MAX_COUNTRY_CODE_LENGTH:I = 0x5

.field static final MAX_DEFAULT_MCC_LENGTH:I = 0x3

.field static final MAX_IDD_LENGTH:I = 0x5

.field static final MAX_NANP_AREA_CODE_LENGTH:I = 0x3

.field static final MAX_NATIONAL_NUMBER_LENGTH:I = 0xf

.field static final MAX_NDD_LENGTH:I = 0x5

.field static final MAX_NON_US_IDD_LENGTH:I = 0x5

.field static final QUERY_SENTENCE_AREA_CODE:Ljava/lang/String; = "AreaCode"

.field static final QUERY_SENTENCE_COUNTRY_CODE:Ljava/lang/String; = "CountryCode"

.field static final QUERY_SENTENCE_IDD:Ljava/lang/String; = "IDD"

.field static final QUERY_SENTENCE_MCC:Ljava/lang/String; = "MCC"

.field static final QUERY_SENTENCE_NANP_AREA_CODE:Ljava/lang/String; = "NANPAreaCode"

.field static final QUERY_SENTENCE_NATIONAL_NUMBER_LENGTH:Ljava/lang/String; = "numLength"

.field static final QUERY_SENTENCE_NDD:Ljava/lang/String; = "NDD"

.field static final QUERY_SENTENCE_NON_US_IDD:Ljava/lang/String; = "NonUS_IDD"

.field static final QUERY_SENTENCE_USER_SELECTED_COUNTRY:Ljava/lang/String; = "DefCountry"

.field static final QUERY_SENTENCE_USER_SELECTED_IDD:Ljava/lang/String; = "DefIDD"

.field static final RESULT_MATCH:I

.field static g_cxtContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->DBG:Z

    .line 21
    const-string v0, "content://htc.cdma.mcc/MccOTA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->CONTENT_URI_CURRENT_COUNTRY_TABLE:Landroid/net/Uri;

    .line 22
    const-string v0, "content://htc.cdma.mcc/AssistedDialing"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->CONTENT_URI_REFERENECE_COUNTRY_TABLE:Landroid/net/Uri;

    .line 23
    const-string v0, "content://htc.cdma.mcc/NANP"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->CONTENT_URI_NANP_TABLE:Landroid/net/Uri;

    .line 24
    const-string v0, "content://htc.cdma.mcc/NonUSIDD"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->CONTENT_URI_NON_US_IDD_TABLE:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method Get_Context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->g_cxtContext:Landroid/content/Context;

    return-object v0
.end method

.method Get_CurrentCountryTable()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->CONTENT_URI_CURRENT_COUNTRY_TABLE:Landroid/net/Uri;

    return-object v0
.end method

.method Get_DBG()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->DBG:Z

    return v0
.end method

.method Get_Define_ResultMatch()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method Get_LOG_TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "AssistedDialing"

    return-object v0
.end method

.method Get_MaxCountyCodeLength()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x5

    return v0
.end method

.method Get_MaxDefaultMCCLength()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x3

    return v0
.end method

.method Get_MaxIDDLength()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x5

    return v0
.end method

.method Get_MaxNANPAreaCodeLength()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x3

    return v0
.end method

.method Get_MaxNDDLength()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x5

    return v0
.end method

.method Get_MaxNationalNumberLength()I
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0xf

    return v0
.end method

.method Get_MaxNonUSIDDLength()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x5

    return v0
.end method

.method Get_NANPTable()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->CONTENT_URI_NANP_TABLE:Landroid/net/Uri;

    return-object v0
.end method

.method Get_NonUSIDDTable()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->CONTENT_URI_NON_US_IDD_TABLE:Landroid/net/Uri;

    return-object v0
.end method

.method Get_QuerySentenceAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "AreaCode"

    return-object v0
.end method

.method Get_QuerySentenceCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "CountryCode"

    return-object v0
.end method

.method Get_QuerySentenceIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "IDD"

    return-object v0
.end method

.method Get_QuerySentenceMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "MCC"

    return-object v0
.end method

.method Get_QuerySentenceNANPAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "NANPAreaCode"

    return-object v0
.end method

.method Get_QuerySentenceNDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "NDD"

    return-object v0
.end method

.method Get_QuerySentenceNationalNumberLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string v0, "numLength"

    return-object v0
.end method

.method Get_QuerySentenceNonUSIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "NonUS_IDD"

    return-object v0
.end method

.method Get_QuerySentenceUserSelectedCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "DefCountry"

    return-object v0
.end method

.method Get_QuerySentenceUserSelectedIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "DefIDD"

    return-object v0
.end method

.method Get_ReferenceCountryTable()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->CONTENT_URI_REFERENECE_COUNTRY_TABLE:Landroid/net/Uri;

    return-object v0
.end method

.method Set_Context(Landroid/content/Context;)V
    .locals 0
    .parameter "cxtContext"

    .prologue
    .line 61
    sput-object p1, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->g_cxtContext:Landroid/content/Context;

    .line 62
    return-void
.end method
