.class public Lcom/android/htccontacts/util/UpdateSIMStatus;
.super Ljava/lang/Object;
.source "UpdateSIMStatus.java"


# static fields
.field private static final FLAG_SIM_SAVE_ANR1_FULL:I = 0x2

.field private static final FLAG_SIM_SAVE_ANR2_FULL:I = 0x4

.field private static final FLAG_SIM_SAVE_EMAIL_FULL:I = 0x1

.field public static final RESULT_FAILURE:I = 0x2

.field public static final RESULT_INVALID_PHONENUMBER:I = 0x3

.field public static final RESULT_SIM_ADN_FULL:I = 0x5

.field public static final RESULT_SIM_ANR_FULL:I = 0x7

.field public static final RESULT_SIM_EMAIL_FULL:I = 0x8

.field public static final RESULT_SIM_ERROR:I = 0x6

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final RESULT_UNCHANGED:I = 0x0

.field public static final RESULT_WITHOUT_VALID_DATA:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSIMErrorDescirptionResource(I)I
    .locals 3
    .parameter "result"

    .prologue
    .line 71
    const v0, 0x7f0a016d

    .line 72
    .local v0, res:I
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 73
    const v0, 0x7f0a016d

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 75
    const v0, 0x7f0a0055

    goto :goto_0

    .line 76
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 77
    const v0, 0x7f0a02ca

    goto :goto_0

    .line 78
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 79
    const v0, 0x7f0a02e4

    goto :goto_0

    .line 80
    :cond_4
    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    .line 81
    const v0, 0x7f0a0395

    goto :goto_0

    .line 82
    :cond_5
    const/4 v1, 0x6

    if-ne p0, v1, :cond_7

    .line 83
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-ne v1, v2, :cond_6

    .line 84
    const v0, 0x7f0a023d

    goto :goto_0

    .line 87
    :cond_6
    const v0, 0x7f0a023c

    goto :goto_0

    .line 89
    :cond_7
    const/4 v1, 0x7

    if-ne p0, v1, :cond_8

    .line 90
    const v0, 0x7f0a0397

    goto :goto_0

    .line 91
    :cond_8
    const/16 v1, 0x8

    if-ne p0, v1, :cond_9

    .line 92
    const v0, 0x7f0a0396

    goto :goto_0

    .line 93
    :cond_9
    if-nez p0, :cond_0

    .line 94
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static processSIMUpdateErrorUri(Landroid/net/Uri;)I
    .locals 7
    .parameter "errorUri"

    .prologue
    .line 27
    const/4 v4, -0x1

    .line 28
    .local v4, value:I
    const/4 v3, 0x1

    .line 29
    .local v3, status:I
    const/4 v2, 0x0

    .line 30
    .local v2, msg:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 31
    const/4 v3, 0x6

    .line 67
    :cond_0
    :goto_0
    return v3

    .line 32
    :cond_1
    sget-object v5, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 34
    const/4 v3, 0x5

    goto :goto_0

    .line 35
    :cond_2
    sget-object v5, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 36
    const/4 v3, 0x6

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    const-string v5, "MemoryFull"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, index:I
    if-lez v1, :cond_4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 42
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, errorFlagString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 46
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 53
    .end local v0           #errorFlagString:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 54
    and-int/lit8 v5, v4, 0x2

    if-gtz v5, :cond_5

    and-int/lit8 v5, v4, 0x4

    if-lez v5, :cond_6

    .line 56
    :cond_5
    const/4 v3, 0x7

    goto :goto_0

    .line 57
    :cond_6
    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_7

    .line 58
    const/16 v3, 0x8

    goto :goto_0

    .line 60
    :cond_7
    const/4 v3, 0x5

    goto :goto_0

    .line 63
    :cond_8
    const/4 v3, 0x5

    goto :goto_0

    .line 47
    .restart local v0       #errorFlagString:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
