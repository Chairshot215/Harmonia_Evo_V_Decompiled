.class public Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;
.super Ljava/lang/Object;
.source "CreditCardValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static checkNumber(Ljava/lang/String;II)Z
    .locals 4
    .parameter "input"
    .parameter "minLength"
    .parameter "maxLength"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .locals 2
    .parameter "number"
    .parameter "cvc"
    .parameter "expMonth"
    .parameter "expYear"
    .parameter "expYearBase"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;",
            ">;)",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardType;"
        }
    .end annotation

    .prologue
    .line 34
    .local p5, errors:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;>;"
    invoke-static {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->getTypeForNumber(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    .line 35
    .local v0, type:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    if-nez v0, :cond_0

    .line 36
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->NUMBER:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->getTypeForPrefix(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    invoke-static {v0, p1, p5}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->validateCvc(Lcom/google/android/finsky/billing/creditcard/CreditCardType;Ljava/lang/String;Ljava/util/Set;)V

    .line 42
    :cond_1
    invoke-static {p2, p3, p4, p5}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->validateExpirationDate(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 43
    return-object v0
.end method

.method private static validateCvc(Lcom/google/android/finsky/billing/creditcard/CreditCardType;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .parameter "type"
    .parameter "cvc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardType;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, errors:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;>;"
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->cvcLength:I

    iget v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->cvcLength:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->checkNumber(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->CVC:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method private static validateExpirationDate(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 10
    .parameter "expMonth"
    .parameter "expYear"
    .parameter "expYearBase"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, errors:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;>;"
    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, invalidYear:Z
    const/4 v1, 0x0

    .line 72
    .local v1, invalidMonth:Z
    const/4 v6, -0x1

    .line 73
    .local v6, year:I
    invoke-static {p1, v8, v8}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->checkNumber(Ljava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 76
    :cond_0
    if-gez v6, :cond_1

    .line 77
    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v2, 0x1

    .line 80
    :cond_1
    add-int/2addr v6, p2

    .line 81
    const/4 v3, -0x1

    .line 82
    .local v3, month:I
    invoke-static {p0, v9, v8}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->checkNumber(Ljava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 85
    :cond_2
    if-lt v3, v9, :cond_3

    const/16 v7, 0xc

    if-le v3, v7, :cond_4

    .line 86
    :cond_3
    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_MONTH:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v1, 0x1

    .line 89
    :cond_4
    if-eqz v2, :cond_6

    .line 109
    :cond_5
    :goto_0
    return-void

    .line 91
    :cond_6
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 93
    .local v4, today:Ljava/util/Calendar;
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-direct {v5, v7, v8, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 95
    .end local v4           #today:Ljava/util/Calendar;
    .local v5, today:Ljava/util/Calendar;
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    if-le v6, v7, :cond_7

    .line 96
    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_7
    if-nez v1, :cond_5

    .line 104
    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v7, v3, -0x1

    invoke-direct {v0, v6, v7, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 105
    .local v0, expiration:Ljava/util/Calendar;
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 106
    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_MONTH:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
