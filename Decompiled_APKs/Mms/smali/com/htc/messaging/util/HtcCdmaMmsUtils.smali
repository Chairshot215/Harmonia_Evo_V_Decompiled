.class public Lcom/htc/messaging/util/HtcCdmaMmsUtils;
.super Ljava/lang/Object;
.source "HtcCdmaMmsUtils.java"


# static fields
.field private static final LOG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaMmsUtils"

.field private static final autoPrependPrefix:Ljava/lang/String; = "+1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneNumber(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 7
    .parameter "cr"

    .prologue
    .line 24
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, htcCdmaPhoneNumber:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 27
    .local v4, lenNumber:I
    if-lez v4, :cond_5

    .line 28
    const/4 v0, 0x1

    .line 32
    .local v0, autoPrependOn:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_1

    :cond_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 37
    :cond_2
    if-eqz v0, :cond_4

    .line 39
    const/4 v3, 0x0

    .line 41
    .local v3, lenDigits:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_3
    const/16 v5, 0xa

    if-ne v3, v5, :cond_4

    .line 45
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 46
    .local v2, leadingChar:C
    const/16 v5, 0x30

    if-lt v2, v5, :cond_4

    const/16 v5, 0x39

    if-gt v2, v5, :cond_4

    .line 47
    const-string v5, "+1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .end local v0           #autoPrependOn:Z
    .end local v2           #leadingChar:C
    .end local v3           #lenDigits:I
    .end local v4           #lenNumber:I
    :cond_4
    :goto_1
    return-object v1

    .line 53
    .restart local v4       #lenNumber:I
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method
