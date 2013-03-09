.class final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;
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
    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 9
    .parameter "number"
    .parameter "candidate"
    .parameter "util"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 497
    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v7

    if-eqz v7, :cond_0

    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    invoke-static {p1, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$100(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v7

    if-eqz v7, :cond_0

    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsMoreThanOneSlash(Ljava/lang/String;)Z
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$200(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v6

    .line 504
    :cond_1
    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    invoke-static {p2, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->access$400(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 506
    .local v4, normalizedCandidate:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->access$500()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, candidateGroups:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v7

    if-eqz v7, :cond_3

    array-length v7, v0

    add-int/lit8 v1, v7, -0x2

    .line 514
    .local v1, candidateNumberGroupIndex:I
    :goto_1
    array-length v7, v0

    if-eq v7, v5, :cond_2

    aget-object v7, v0, v1

    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move v6, v5

    .line 517
    goto :goto_0

    .line 509
    .end local v1           #candidateNumberGroupIndex:I
    :cond_3
    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    goto :goto_1

    .line 519
    .restart local v1       #candidateNumberGroupIndex:I
    :cond_4
    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    invoke-static {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$300(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, formattedNumberGroups:[Ljava/lang/String;
    array-length v7, v3

    add-int/lit8 v2, v7, -0x1

    .line 523
    .local v2, formattedNumberGroupIndex:I
    :goto_2
    if-lez v2, :cond_5

    if-ltz v1, :cond_5

    .line 525
    aget-object v7, v0, v1

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 524
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 532
    :cond_5
    if-ltz v1, :cond_6

    aget-object v7, v0, v1

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    move v6, v5

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_3
.end method
