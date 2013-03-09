.class public Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private countryCode_:I

.field private fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private hasCountryCode:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    iput v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return-void
.end method

.method public static newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .locals 1

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clearIntlNumberFormat()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public getCountryCode()I
    .locals 1

    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    return v0
.end method

.method public getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntlNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCountryForCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getNoInternationalDialling()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public hasCountryCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return v0
.end method

.method public hasFixedLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return v0
.end method

.method public hasGeneralDesc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    return v0
.end method

.method public hasInternationalPrefix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return v0
.end method

.method public hasLeadingDigits()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    return v0
.end method

.method public hasMainCountryForCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return v0
.end method

.method public hasMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return v0
.end method

.method public hasNationalPrefix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return v0
.end method

.method public hasNoInternationalDialling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return v0
.end method

.method public hasPager()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    return v0
.end method

.method public hasPersonalNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return v0
.end method

.method public hasPremiumRate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return v0
.end method

.method public hasSharedCost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return v0
.end method

.method public hasTollFree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return v0
.end method

.method public hasUan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    return v0
.end method

.method public hasVoip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return v0
.end method

.method public intlNumberFormatSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public intlNumberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return v0
.end method

.method public isMainCountryForCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public isSameMobileAndFixedLinePattern()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public numberFormatSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_10

    new-instance v6, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    invoke-virtual {v6, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    iget-object v7, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_11

    new-instance v6, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    invoke-virtual {v6, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    iget-object v7, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-void
.end method

.method public setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    iput p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    return-object p0
.end method

.method public setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return-object p0
.end method

.method public setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return-object p0
.end method

.method public setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return-object p0
.end method

.method public setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_1
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_3
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_4
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_5
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_6
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_7
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_8
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_9
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    :cond_a
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_b
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_c
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_d
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_e
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_f
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_10

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_11

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_12
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void
.end method
