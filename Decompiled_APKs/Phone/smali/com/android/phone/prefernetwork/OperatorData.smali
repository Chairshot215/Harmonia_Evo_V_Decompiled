.class public Lcom/android/phone/prefernetwork/OperatorData;
.super Ljava/lang/Object;
.source "OperatorData.java"


# static fields
.field public static final COUNTRY_CODE_IDX:I = 0x2

.field public static final MNC_IDX:I = 0x0

.field public static final NAME_IDX:I = 0x1

.field public static final UNKNOWN_COUNTRY_CODE:Ljava/lang/String; = ""

.field private static mOperatorCode:[Ljava/lang/CharSequence;

.field private static mOperatorName:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorCode:[Ljava/lang/CharSequence;

    .line 59
    sput-object v0, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorName:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperatorCodeList(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"

    .prologue
    .line 17
    sget-object v0, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorCode:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorCode:[Ljava/lang/CharSequence;

    .line 22
    :cond_0
    sget-object v0, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorCode:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static getOperatorName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "target"

    .prologue
    .line 35
    if-nez p1, :cond_1

    .line 36
    const-string p1, ""

    .line 54
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 38
    .restart local p1
    :cond_1
    sget-object v5, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorCode:[Ljava/lang/CharSequence;

    if-nez v5, :cond_2

    if-eqz p0, :cond_2

    .line 39
    invoke-static {p0}, Lcom/android/phone/prefernetwork/OperatorData;->getOperatorCodeList(Landroid/content/Context;)[Ljava/lang/CharSequence;

    .line 41
    :cond_2
    sget-object v5, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorCode:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 42
    const/4 v3, -0x1

    .line 43
    .local v3, idx_0b:I
    sget-object v0, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorCode:[Ljava/lang/CharSequence;

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 44
    .local v1, data:Ljava/lang/CharSequence;
    add-int/lit8 v3, v3, 0x1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 46
    sget-object v5, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorName:[Ljava/lang/CharSequence;

    if-nez v5, :cond_3

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/phone/prefernetwork/OperatorData;->getOperatorNameList(Landroid/content/Context;)[Ljava/lang/CharSequence;

    .line 47
    :cond_3
    sget-object v5, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorName:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorCode:[Ljava/lang/CharSequence;

    array-length v5, v5

    sget-object v6, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorName:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ne v5, v6, :cond_4

    .line 48
    sget-object v5, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorName:[Ljava/lang/CharSequence;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 43
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getOperatorNameList(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorName:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorName:[Ljava/lang/CharSequence;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/phone/prefernetwork/OperatorData;->mOperatorName:[Ljava/lang/CharSequence;

    return-object v0
.end method
