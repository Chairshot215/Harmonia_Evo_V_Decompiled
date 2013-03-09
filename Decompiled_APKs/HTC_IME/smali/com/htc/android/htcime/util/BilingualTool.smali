.class public Lcom/htc/android/htcime/util/BilingualTool;
.super Ljava/lang/Object;
.source "BilingualTool.java"


# static fields
.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x2

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field public static final EXCLUDE_LANG_ID_LIST:[I = null

.field static final TAG:Ljava/lang/String; = "BilingualTool"


# instance fields
.field private mIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mIMMData:Lcom/htc/android/htcime/HTCIMMData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "imm"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 28
    iput-object v0, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 33
    iput-object p1, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 34
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 35
    return-void
.end method

.method public static isValid1stLang(Landroid/content/Context;Z)Z
    .locals 9
    .parameter "context"
    .parameter "defValue"

    .prologue
    const/4 v6, 0x0

    .line 75
    invoke-static {p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 76
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 79
    .local v3, res:Landroid/content/res/Resources;
    invoke-static {v4, v3, p1}, Lcom/htc/android/htcime/util/SIPSwitcher;->isLatinSIP(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v6

    .line 83
    :cond_1
    const v5, 0x7f0900d7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, legendLangKeyDef:Ljava/lang/String;
    if-eqz p1, :cond_2

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 87
    .local v1, lastLatinLang:I
    const-string v5, "BilingualTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isValid1stLang] lastLatinLang = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (defValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v5, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 90
    sget-object v5, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    aget v5, v5, v0

    if-eq v1, v5, :cond_0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 84
    .end local v0           #i:I
    .end local v1           #lastLatinLang:I
    :cond_2
    sget-object v5, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    aget v5, v5, v6

    goto :goto_1

    .line 95
    .restart local v0       #i:I
    .restart local v1       #lastLatinLang:I
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get2ndKdbID()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMData;->is12KeyAlphabet()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMData;->is20KeyAlphabet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 57
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    sget-object v3, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMData;->is20KeyAlphabet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->m2ndLanguage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/16 v1, 0xbf0

    goto :goto_0

    .line 64
    :cond_3
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->m2ndLanguage:I

    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->get12KDBnamebyLang(I)I

    move-result v1

    goto :goto_0
.end method

.method public get2ndLangID()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 39
    iget-object v1, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->isQwertyAlphabet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->is12KeyAlphabet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/util/BilingualTool;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->is20KeyAlphabet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v1

    .line 47
    :goto_0
    return v1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 44
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    sget-object v2, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 45
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v1

    goto :goto_0

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_2
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->m2ndLanguage:I

    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v1

    goto :goto_0
.end method
