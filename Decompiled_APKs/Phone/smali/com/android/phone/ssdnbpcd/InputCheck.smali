.class Lcom/android/phone/ssdnbpcd/InputCheck;
.super Ljava/lang/Object;
.source "InputCheck.java"


# static fields
.field private static final ASTERISK:Ljava/lang/Character; = null

.field private static final CUSTOMER_BAL:Ljava/lang/String; = "#225"

.field private static final CUSTOMER_DATA:Ljava/lang/String; = "#3282"

.field private static final CUSTOMER_MIN:Ljava/lang/String; = "#646"

.field private static final CUSTOMER_PMT:Ljava/lang/String; = "#768"

.field private static final CUSTOMER_SERVICE_DIAL:Ljava/lang/String; = "*611"

.field private static final MAXIMUM_INPUT_STRING_LENGTH:I = 0x28

.field private static final MINIMUM_INPUT_STRING_LENGTH:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final NBPCD_DBG:Z = false

.field private static final PAUSE_COMMA:Ljava/lang/Character; = null

.field private static final PAUSE_P:Ljava/lang/Character; = null

.field private static final PAUSE_W:Ljava/lang/Character; = null

.field private static final PLUS_CODE:Ljava/lang/Character; = null

.field private static final POUND:Ljava/lang/Character; = null

.field private static final RESULT_MATCH:I = 0x0

.field private static final VOICEMAIL_DIAL:Ljava/lang/String; = "*86"

.field private static m_bIsCustomerConvertNumber:Z

.field private static m_bIsCustomerServiceNumber:Z

.field private static m_bIsInputFromContact:Z

.field private static m_bIsVoicemailNumber:Z

.field private static m_iFilteredStringLength:I

.field private static m_iInputStringLength:I

.field private static m_szFilteredString:Ljava/lang/String;


# instance fields
.field m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    sput-boolean v1, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerConvertNumber:Z

    .line 27
    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->ASTERISK:Ljava/lang/Character;

    .line 28
    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->POUND:Ljava/lang/Character;

    .line 29
    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->PLUS_CODE:Ljava/lang/Character;

    .line 31
    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x70

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->PAUSE_P:Ljava/lang/Character;

    .line 32
    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x77

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->PAUSE_W:Ljava/lang/Character;

    .line 33
    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->PAUSE_COMMA:Ljava/lang/Character;

    .line 36
    sput v1, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iInputStringLength:I

    .line 37
    sput v1, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iFilteredStringLength:I

    .line 38
    sput-boolean v1, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsVoicemailNumber:Z

    .line 39
    sput-boolean v1, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerServiceNumber:Z

    .line 40
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_szFilteredString:Ljava/lang/String;

    .line 41
    sput-boolean v1, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsInputFromContact:Z

    .line 44
    const-string v2, "ro.debuggable.nbpcd"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/ssdnbpcd/InputCheck;->NBPCD_DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    return-void
.end method

.method private FilterInputString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "szInputString"

    .prologue
    .line 118
    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[msg]:InputCheck::FilterInputString() [+++]."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    const/16 v4, 0x10

    new-array v0, v4, [Ljava/lang/Character;

    const/4 v4, 0x0

    const/16 v5, 0x30

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const/16 v5, 0x31

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const/16 v5, 0x33

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const/16 v5, 0x34

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const/16 v5, 0x35

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const/16 v5, 0x36

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const/16 v5, 0x37

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const/16 v5, 0x38

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const/16 v5, 0x39

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const/16 v5, 0x2a

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const/16 v5, 0x23

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const/16 v5, 0x2b

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const/16 v5, 0x70

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const/16 v5, 0x77

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xf

    const/16 v5, 0x2c

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v0, v4

    .line 122
    .local v0, chAllowed:[Ljava/lang/Character;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v3, szbufFilteredString:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, iInputIndex:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 125
    const/4 v1, 0x0

    .local v1, iAllowedCharIndex:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 126
    aget-object v4, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v4

    if-nez v4, :cond_2

    .line 127
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 124
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1           #iAllowedCharIndex:I
    :cond_3
    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    iget-object v4, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v4}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[msg]:InputCheck::FilterInputString() [---]."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private FilterInputStringLength(Ljava/lang/String;)I
    .locals 3
    .parameter "szFilteredInputString"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputCheck::FilterInputString() [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 150
    .local v0, iPausePosition:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    sget-object v1, Lcom/android/phone/ssdnbpcd/InputCheck;->PAUSE_P:Ljava/lang/Character;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputCheck;->PAUSE_W:Ljava/lang/Character;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/ssdnbpcd/InputCheck;->PAUSE_COMMA:Ljava/lang/Character;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v1

    if-nez v1, :cond_3

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputCheck::FilterInputString() [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    return v0

    .line 150
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private IsInputCustomerConvertNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "szInputString"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerConvertNumber() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    const-string v0, "#225"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#3282"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#646"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#768"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerConvertNumber(), Input is Customer Service number."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerConvertNumber() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_2
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerConvertNumber(), Input is NOT Customer Service number."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerConvertNumber() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsInputCustomerServiceNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "szInputString"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerServiceNumber() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    const-string v0, "*611"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerServiceNumber(), Input is Customer Service number."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerServiceNumber() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerServiceNumber(), Input is NOT Customer Service number."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputCustomerServiceNumber() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsInputVoiceMailNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "szInputString"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputVoiceMailNumber() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const-string v0, "*86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputVoiceMailNumber(), Input is Voicemail number."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputVoiceMailNumber() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputVoiceMailNumber(), Input is NOT Voicemail number."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:InputCheck::IsInputVoiceMailNumber() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method Get_FileteredString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_szFilteredString:Ljava/lang/String;

    return-object v0
.end method

.method Get_FileteredStringLength()I
    .locals 1

    .prologue
    .line 246
    sget v0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iFilteredStringLength:I

    return v0
.end method

.method Get_InputStringLength()I
    .locals 1

    .prologue
    .line 238
    sget v0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iInputStringLength:I

    return v0
.end method

.method Get_IsCustomerServiceNumber()Z
    .locals 1

    .prologue
    .line 270
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerServiceNumber:Z

    return v0
.end method

.method Get_IsInputCustomerConvertNumber()Z
    .locals 1

    .prologue
    .line 283
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerConvertNumber:Z

    return v0
.end method

.method Get_IsInputFromContact()Z
    .locals 1

    .prologue
    .line 278
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsInputFromContact:Z

    return v0
.end method

.method Get_IsVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsVoicemailNumber:Z

    return v0
.end method

.method IsValid(Ljava/lang/String;)Z
    .locals 6
    .parameter "szInputString"

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:InputCheck::IsValid() [+++]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    if-nez p1, :cond_2

    .line 110
    :cond_1
    :goto_0
    return v0

    .line 56
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sput v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iInputStringLength:I

    .line 58
    sget-boolean v2, Lcom/android/phone/ssdnbpcd/InputCheck;->NBPCD_DBG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[User input = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [Length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iInputStringLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/ssdnbpcd/InputCheck;->IsInputVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsVoicemailNumber:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/android/phone/ssdnbpcd/InputCheck;->IsInputCustomerServiceNumber(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerServiceNumber:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/ssdnbpcd/InputCheck;->IsInputCustomerConvertNumber(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerConvertNumber:Z

    .line 66
    sget v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iInputStringLength:I

    const/16 v3, 0x28

    if-le v2, v3, :cond_4

    .line 67
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputCheck::IsValid(), Input string too long [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_4
    sget v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iInputStringLength:I

    if-ge v2, v5, :cond_5

    sget-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->PLUS_CODE:Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_5

    .line 74
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputCheck::IsValid(), Input string too short and begins with + [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    :cond_5
    sget v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iInputStringLength:I

    if-ge v2, v5, :cond_6

    sget-boolean v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsVoicemailNumber:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerServiceNumber:Z

    if-nez v2, :cond_6

    .line 81
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputCheck::IsValid(), Input string too short, [bIsVoicemailNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsVoicemailNumber:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [bIsCustomerServiceNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerServiceNumber:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [---]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 87
    :cond_6
    sget-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->ASTERISK:Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v1, :cond_7

    sget-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->POUND:Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_8

    :cond_7
    sget-boolean v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsVoicemailNumber:Z

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerServiceNumber:Z

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerConvertNumber:Z

    if-nez v2, :cond_8

    .line 88
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputCheck::IsValid(), Input string starts with * or #, [bIsVoicemailNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsVoicemailNumber:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [bIsCustomerServiceNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsCustomerServiceNumber:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [---]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/phone/ssdnbpcd/InputCheck;->FilterInputString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_szFilteredString:Ljava/lang/String;

    .line 95
    sget-object v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_szFilteredString:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/ssdnbpcd/InputCheck;->FilterInputStringLength(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iFilteredStringLength:I

    .line 97
    sget v2, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iFilteredStringLength:I

    if-gtz v2, :cond_9

    .line 98
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:InputCheck::IsValid(), Empty filtered input string [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    :cond_9
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/InputCheck;->NBPCD_DBG:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:InputCheck::IsValid(), [Filtered input string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/ssdnbpcd/InputCheck;->m_szFilteredString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [Length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/ssdnbpcd/InputCheck;->m_iFilteredStringLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 107
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/InputCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[msg]:InputCheck::IsValid() [---]."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v0, v1

    .line 110
    goto/16 :goto_0
.end method

.method Set_IsInputFromContact(Z)V
    .locals 0
    .parameter "bIsInputFromContact"

    .prologue
    .line 225
    sput-boolean p1, Lcom/android/phone/ssdnbpcd/InputCheck;->m_bIsInputFromContact:Z

    .line 226
    return-void
.end method
