.class final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;
.super Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 7
    .parameter "number"
    .parameter "candidate"
    .parameter "util"

    .prologue
    const/4 v5, 0x0

    .line 443
    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v6

    if-eqz v6, :cond_0

    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    invoke-static {p1, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$100(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v6

    if-eqz v6, :cond_0

    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsMoreThanOneSlash(Ljava/lang/String;)Z
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$200(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v5

    .line 450
    :cond_1
    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    invoke-static {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$300(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, formattedNumberGroups:[Ljava/lang/String;
    const/4 v6, 0x1

    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    invoke-static {p2, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->access$400(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 453
    .local v4, normalizedCandidate:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 456
    .local v1, fromIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 459
    aget-object v6, v0, v2

    invoke-virtual {v4, v6, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 460
    if-ltz v1, :cond_0

    .line 464
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    .line 465
    if-nez v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 467
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 471
    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, nationalSignificantNumber:Ljava/lang/String;
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 456
    .end local v3           #nationalSignificantNumber:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 480
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method
