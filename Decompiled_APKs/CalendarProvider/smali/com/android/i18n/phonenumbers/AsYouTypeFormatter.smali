.class public Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final EMPTY_METADATA:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata; = null

.field private static final MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private ableToFormat:Z

.field private accruedInput:Ljava/lang/StringBuilder;

.field private accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private currentFormattingPattern:Ljava/lang/String;

.field private currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private currentOutput:Ljava/lang/String;

.field private defaultCountry:Ljava/lang/String;

.field private defaultMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private digitPattern:Ljava/util/regex/Pattern;

.field private digitPlaceholder:Ljava/lang/String;

.field private formattingTemplate:Ljava/lang/StringBuilder;

.field private isExpectingCountryCallingCode:Z

.field private isInternationalFormatting:Z

.field private lastMatchPosition:I

.field private nationalNumber:Ljava/lang/StringBuilder;

.field private originalPosition:I

.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private positionToRemember:I

.field private possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private regexCache:Lcom/android/i18n/phonenumbers/RegexCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 61
    const-string v0, "\\[([^\\[\\]])*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "\\d(?=[^,}][^,}])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "regionCode"

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 51
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 85
    const-string v0, "\u2008"

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->digitPlaceholder:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->digitPlaceholder:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->digitPattern:Ljava/util/regex/Pattern;

    .line 87
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 90
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 93
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/android/i18n/phonenumbers/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    .line 108
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 110
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 111
    return-void
.end method

.method private attemptToChooseFormattingPattern()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 385
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    .line 388
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private attemptToExtractCountryCallingCode()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 468
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v4

    .line 471
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .local v3, numberWithoutCountryCallingCode:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 473
    .local v0, countryCode:I
    if-eqz v0, :cond_0

    .line 476
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 477
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, newRegionCode:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 480
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 482
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, countryCodeString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private attemptToExtractIdd()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 441
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\+|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 444
    .local v1, internationalPrefix:Ljava/util/regex/Pattern;
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 445
    .local v0, iddMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 447
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 448
    .local v2, startOfCountryCallingCode:I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 449
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_0

    .line 453
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .end local v2           #startOfCountryCallingCode:I
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private createFormattingTemplate(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z
    .locals 5
    .parameter "format"

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, numberPattern:Ljava/lang/String;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v2

    .line 194
    :cond_1
    sget-object v3, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "\\\\d"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    sget-object v3, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "\\\\d"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 199
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, tempTemplate:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getAvailableFormats(Ljava/lang/String;)V
    .locals 4
    .parameter "leadingThreeDigits"

    .prologue
    .line 150
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, formatList:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 155
    .local v0, format:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isFormatEligible(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v0           #format:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v1           #formatList:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 159
    .restart local v1       #formatList:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "numberPattern"
    .parameter "numberFormat"

    .prologue
    .line 212
    const-string v1, "999999999999999"

    .line 213
    .local v1, longestPhoneNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v4, p1}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 214
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 215
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, aPhoneNumber:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 219
    const-string v3, ""

    .line 225
    :goto_0
    return-object v3

    .line 222
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, template:Ljava/lang/String;
    const-string v4, "9"

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->digitPlaceholder:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    goto :goto_0
.end method

.method private getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .parameter "regionCode"

    .prologue
    .line 116
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, countryCallingCode:I
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, mainCountry:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 119
    .local v2, metadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    .line 124
    .end local v2           #metadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :goto_0
    return-object v2

    .restart local v2       #metadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_0
    sget-object v2, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0
.end method

.method private inputAccruedNationalNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 397
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 398
    .local v1, lengthOfNationalNumber:I
    if-lez v1, :cond_2

    .line 399
    const-string v2, ""

    .line 400
    .local v2, tempNationalNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 401
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v2

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    .end local v0           #i:I
    .end local v2           #tempNationalNumber:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 403
    .restart local v0       #i:I
    .restart local v2       #tempNationalNumber:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 407
    .end local v0           #i:I
    .end local v2           #tempNationalNumber:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private inputDigitHelper(C)Ljava/lang/String;
    .locals 5
    .parameter "nextChar"

    .prologue
    const/4 v4, 0x0

    .line 510
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->digitPattern:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 511
    .local v0, digitMatcher:Ljava/util/regex/Matcher;
    iget v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, tempTemplate:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 515
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 523
    .end local v1           #tempTemplate:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 517
    :cond_0
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 520
    iput-boolean v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 522
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 523
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .locals 4
    .parameter "nextChar"
    .parameter "rememberPosition"

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    if-eqz p2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 287
    :cond_1
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_2
    :goto_0
    return-object v0

    .line 291
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    .line 295
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 323
    :cond_4
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 324
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, tempNationalNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 331
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 333
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    .end local v0           #formattedNumber:Ljava/lang/String;
    .end local v1           #tempNationalNumber:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :pswitch_1
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 302
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 309
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz v2, :cond_7

    .line 310
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 313
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_6
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()V

    .line 305
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_7
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 319
    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 320
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 335
    .restart local v0       #formattedNumber:Ljava/lang/String;
    .restart local v1       #tempNationalNumber:Ljava/lang/String;
    :cond_8
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 339
    .end local v0           #formattedNumber:Ljava/lang/String;
    .end local v1           #tempNationalNumber:Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isDigitOrLeadingPlusSign(C)Z
    .locals 3
    .parameter "nextChar"

    .prologue
    const/4 v0, 0x1

    .line 345
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFormatEligible(Ljava/lang/String;)Z
    .locals 1
    .parameter "format"

    .prologue
    .line 163
    sget-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private maybeCreateNewTemplate()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 134
    .local v1, numberFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, pattern:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    .end local v1           #numberFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2           #pattern:Ljava/lang/String;
    :goto_1
    return v3

    .line 138
    .restart local v1       #numberFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .restart local v2       #pattern:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->createFormattingTemplate(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    iput-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 140
    const/4 v3, 0x1

    goto :goto_1

    .line 142
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 145
    .end local v1           #numberFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2           #pattern:Ljava/lang/String;
    :cond_2
    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    goto :goto_1
.end method

.method private narrowDownPossibleFormats(Ljava/lang/String;)V
    .locals 7
    .parameter "leadingDigits"

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x3

    .line 168
    .local v1, indexOfLeadingDigitsPattern:I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 169
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 171
    .local v0, format:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v5

    if-le v5, v1, :cond_0

    .line 172
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 175
    .local v3, leadingDigitsPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 176
    .local v4, m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 182
    .end local v0           #format:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3           #leadingDigitsPattern:Ljava/util/regex/Pattern;
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_1
    return-void
.end method

.method private normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .locals 3
    .parameter "nextChar"
    .parameter "rememberPosition"

    .prologue
    .line 494
    const/16 v2, 0x2b

    if-ne p1, v2, :cond_1

    .line 495
    move v0, p1

    .line 496
    .local v0, normalizedChar:C
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    :goto_0
    if-eqz p2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 506
    :cond_0
    return v0

    .line 498
    .end local v0           #normalizedChar:C
    :cond_1
    const/16 v1, 0xa

    .line 499
    .local v1, radix:I
    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    .line 500
    .restart local v0       #normalizedChar:C
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private removeNationalPrefixFromNationalNumber()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, startOfNationalNumber:I
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    .line 414
    const/4 v2, 0x1

    .line 415
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const-string v4, "1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iput-boolean v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 430
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 431
    return-void

    .line 417
    :cond_1
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 420
    .local v1, nationalPrefixForParsing:Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 421
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    iput-boolean v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 426
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 427
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method attemptToFormatAccruedDigits()Ljava/lang/String;
    .locals 6

    .prologue
    .line 351
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 352
    .local v3, numFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 353
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 354
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, formattedNumber:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    .end local v0           #formattedNumber:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #numFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :goto_0
    return-object v4

    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 236
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 237
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 239
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 241
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 242
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 243
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isInternationalFormatting:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 245
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 249
    :cond_0
    return-void
.end method

.method public getRememberedPosition()I
    .locals 4

    .prologue
    .line 366
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v2, :cond_1

    .line 367
    iget v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 377
    :cond_0
    return v1

    .line 369
    :cond_1
    const/4 v0, 0x0

    .local v0, accruedInputIndex:I
    const/4 v1, 0x0

    .line 370
    .local v1, currentOutputIndex:I
    :goto_0
    iget v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 375
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public inputDigit(C)Ljava/lang/String;
    .locals 1
    .parameter "nextChar"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method

.method public inputDigitAndRememberPosition(C)Ljava/lang/String;
    .locals 1
    .parameter "nextChar"

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method
