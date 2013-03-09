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

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 309
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 323
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 337
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 351
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 365
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 379
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 393
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 407
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 421
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 435
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 449
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 460
    iput v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 482
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 493
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 515
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 526
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 537
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    .line 588
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 613
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 277
    return-void
.end method

.method public static newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    return-object p0
.end method

.method public addNumberFormat(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 556
    if-nez p1, :cond_0

    .line 557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    return-object p0
.end method

.method public clearIntlNumberFormat()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 583
    return-object p0
.end method

.method public getCountryCode()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    return v0
.end method

.method public getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntlNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .parameter "index"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCountryForCode()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getNoInternationalDialling()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNumberFormat(I)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .parameter "index"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return v0
.end method

.method public hasFixedLine()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return v0
.end method

.method public hasGeneralDesc()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    return v0
.end method

.method public hasInternationalPrefix()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return v0
.end method

.method public hasLeadingDigits()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    return v0
.end method

.method public hasMainCountryForCode()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return v0
.end method

.method public hasMobile()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return v0
.end method

.method public hasNationalPrefix()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return v0
.end method

.method public hasNoInternationalDialling()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return v0
.end method

.method public hasPager()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    return v0
.end method

.method public hasPersonalNumber()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return v0
.end method

.method public hasPremiumRate()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return v0
.end method

.method public hasSharedCost()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return v0
.end method

.method public hasTollFree()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return v0
.end method

.method public hasUan()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    return v0
.end method

.method public hasVoip()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return v0
.end method

.method public intlNumberFormatSize()I
    .locals 1

    .prologue
    .line 569
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

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return v0
.end method

.method public isMainCountryForCode()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public isSameMobileAndFixedLinePattern()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public numberFormatSize()I
    .locals 1

    .prologue
    .line 551
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

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .parameter "objectInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 723
    .local v1, hasDesc:Z
    if-eqz v1, :cond_0

    .line 724
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 725
    .local v0, desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 726
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 728
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 729
    if-eqz v1, :cond_1

    .line 730
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 731
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 732
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 734
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 735
    if-eqz v1, :cond_2

    .line 736
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 737
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 740
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 741
    if-eqz v1, :cond_3

    .line 742
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 743
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 744
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 746
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 747
    if-eqz v1, :cond_4

    .line 748
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 749
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 750
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 752
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 753
    if-eqz v1, :cond_5

    .line 754
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 755
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 756
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 758
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 759
    if-eqz v1, :cond_6

    .line 760
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 761
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 762
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 764
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 765
    if-eqz v1, :cond_7

    .line 766
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 767
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 768
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 770
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 771
    if-eqz v1, :cond_8

    .line 772
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 773
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 774
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 776
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 777
    if-eqz v1, :cond_9

    .line 778
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 779
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 780
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 782
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 783
    if-eqz v1, :cond_a

    .line 784
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 785
    .restart local v0       #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 786
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 789
    .end local v0           #desc:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 790
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 791
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 793
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 794
    .local v2, hasString:Z
    if-eqz v2, :cond_b

    .line 795
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 798
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 799
    if-eqz v2, :cond_c

    .line 800
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 803
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 804
    if-eqz v2, :cond_d

    .line 805
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 808
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 809
    if-eqz v2, :cond_e

    .line 810
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 813
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 814
    if-eqz v2, :cond_f

    .line 815
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 818
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 820
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    .line 821
    .local v5, nationalFormatSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_10

    .line 822
    new-instance v6, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 823
    .local v6, numFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 824
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 827
    .end local v6           #numFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    .line 828
    .local v4, intlNumberFormatSize:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_11

    .line 829
    new-instance v6, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 830
    .restart local v6       #numFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 831
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 834
    .end local v6           #numFormat:Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 836
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 837
    if-eqz v2, :cond_12

    .line 838
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 841
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 842
    return-void
.end method

.method public setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    .line 465
    iput p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 466
    return-object p0
.end method

.method public setFixedLine(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 316
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    .line 317
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 318
    return-object p0
.end method

.method public setGeneralDesc(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 302
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    .line 303
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 304
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    .line 454
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 455
    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    .line 476
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 477
    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    .line 607
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 608
    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 618
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 619
    return-object p0
.end method

.method public setMainCountryForCode(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 596
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 597
    return-object p0
.end method

.method public setMobile(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 330
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    .line 331
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 332
    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 498
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 499
    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    .line 520
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 521
    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 531
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method public setNoInternationalDialling(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 442
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    .line 443
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 444
    return-object p0
.end method

.method public setPager(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 414
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    .line 415
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 416
    return-object p0
.end method

.method public setPersonalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 386
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    .line 387
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 388
    return-object p0
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 509
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 510
    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 487
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 488
    return-object p0
.end method

.method public setPremiumRate(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 358
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    .line 359
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 360
    return-object p0
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 542
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 543
    return-object p0
.end method

.method public setSharedCost(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 372
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    .line 373
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 374
    return-object p0
.end method

.method public setTollFree(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    .line 345
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 346
    return-object p0
.end method

.method public setUan(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 425
    if-nez p1, :cond_0

    .line 426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 428
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    .line 429
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 430
    return-object p0
.end method

.method public setVoip(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 400
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    .line 401
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 402
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .parameter "objectOutput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 624
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v3, :cond_0

    .line 625
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 627
    :cond_0
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 628
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v3, :cond_1

    .line 629
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 631
    :cond_1
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 632
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v3, :cond_2

    .line 633
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 635
    :cond_2
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 636
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v3, :cond_3

    .line 637
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 639
    :cond_3
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 640
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v3, :cond_4

    .line 641
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 643
    :cond_4
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 644
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v3, :cond_5

    .line 645
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 647
    :cond_5
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 648
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v3, :cond_6

    .line 649
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 651
    :cond_6
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 652
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v3, :cond_7

    .line 653
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 655
    :cond_7
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 656
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v3, :cond_8

    .line 657
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 659
    :cond_8
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 660
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v3, :cond_9

    .line 661
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 663
    :cond_9
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 664
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v3, :cond_a

    .line 665
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 668
    :cond_a
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 669
    iget v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 670
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 672
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 673
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v3, :cond_b

    .line 674
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 677
    :cond_b
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 678
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v3, :cond_c

    .line 679
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 682
    :cond_c
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 683
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v3, :cond_d

    .line 684
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 687
    :cond_d
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 688
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v3, :cond_e

    .line 689
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 692
    :cond_e
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 693
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v3, :cond_f

    .line 694
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 697
    :cond_f
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 699
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v2

    .line 700
    .local v2, numberFormatSize:I
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 701
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_10

    .line 702
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_10
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v1

    .line 706
    .local v1, intlNumberFormatSize:I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 707
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_11

    .line 708
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 711
    :cond_11
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 713
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 714
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v3, :cond_12

    .line 715
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 718
    :cond_12
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 719
    return-void
.end method
