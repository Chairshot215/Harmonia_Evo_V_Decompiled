.class public final Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressChallenge"
.end annotation


# instance fields
.field private address_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

.field private cachedSize:I

.field private checkbox_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;",
            ">;"
        }
    .end annotation
.end field

.field private descriptionHtml_:Ljava/lang/String;

.field private errorHtml_:Ljava/lang/String;

.field private errorInputField_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;"
        }
    .end annotation
.end field

.field private hasAddress:Z

.field private hasDescriptionHtml:Z

.field private hasErrorHtml:Z

.field private hasResponseAddressParam:Z

.field private hasResponseCheckboxesParam:Z

.field private hasTitle:Z

.field private requiredField_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private responseAddressParam_:Ljava/lang/String;

.field private responseCheckboxesParam_:Ljava/lang/String;

.field private supportedCountry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->responseAddressParam_:Ljava/lang/String;

    .line 387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam_:Ljava/lang/String;

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->title_:Ljava/lang/String;

    .line 421
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->descriptionHtml_:Ljava/lang/String;

    .line 437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->checkbox_:Ljava/util/List;

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->address_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->errorInputField_:Ljava/util/List;

    .line 524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->errorHtml_:Ljava/lang/String;

    .line 540
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->requiredField_:Ljava/util/List;

    .line 567
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->supportedCountry_:Ljava/util/List;

    .line 655
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->cachedSize:I

    .line 365
    return-void
.end method


# virtual methods
.method public addCheckbox(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->checkbox_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->checkbox_:Ljava/util/List;

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->checkbox_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    return-object p0
.end method

.method public addErrorInputField(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 507
    if-nez p1, :cond_0

    .line 508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->errorInputField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->errorInputField_:Ljava/util/List;

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->errorInputField_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    return-object p0
.end method

.method public addRequiredField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 2
    .parameter "value"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->requiredField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->requiredField_:Ljava/util/List;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->requiredField_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    return-object p0
.end method

.method public addSupportedCountry(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 584
    if-nez p1, :cond_0

    .line 585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->supportedCountry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->supportedCountry_:Ljava/util/List;

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->supportedCountry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    return-object p0
.end method

.method public getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->address_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->cachedSize:I

    if-gez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getSerializedSize()I

    .line 662
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->cachedSize:I

    return v0
.end method

.method public getCheckbox(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    .locals 1
    .parameter "index"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->checkbox_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    return-object v0
.end method

.method public getCheckboxCount()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->checkbox_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCheckboxList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->checkbox_:Ljava/util/List;

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->errorHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorInputFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->errorInputField_:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->requiredField_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseAddressParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->responseAddressParam_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCheckboxesParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 667
    const/4 v3, 0x0

    .line 668
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasResponseAddressParam()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 669
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getResponseAddressParam()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasResponseCheckboxesParam()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getResponseCheckboxesParam()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 677
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 680
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 681
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 684
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckboxList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    .line 685
    .local v1, element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 688
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasAddress()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 689
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 692
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 693
    .local v1, element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    const/4 v4, 0x7

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 696
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 697
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getErrorHtml()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 701
    :cond_7
    const/4 v0, 0x0

    .line 702
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getRequiredFieldList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 703
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 706
    .end local v1           #element:Ljava/lang/Integer;
    :cond_8
    add-int/2addr v3, v0

    .line 707
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getRequiredFieldList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 709
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getSupportedCountryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;

    .line 710
    .local v1, element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    .line 713
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    :cond_9
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->cachedSize:I

    .line 714
    return v3
.end method

.method public getSupportedCountryCount()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->supportedCountry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedCountryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->supportedCountry_:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasAddress:Z

    return v0
.end method

.method public hasDescriptionHtml()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasErrorHtml()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml:Z

    return v0
.end method

.method public hasResponseAddressParam()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasResponseAddressParam:Z

    return v0
.end method

.method public hasResponseCheckboxesParam()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasResponseCheckboxesParam:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 723
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 727
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 728
    :sswitch_0
    return-object p0

    .line 733
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->setResponseAddressParam(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 737
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->setResponseCheckboxesParam(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 741
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 745
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 749
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;-><init>()V

    .line 750
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 751
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->addCheckbox(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 755
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;-><init>()V

    .line 756
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 757
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->setAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 761
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;-><init>()V

    .line 762
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 763
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->addErrorInputField(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 767
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->setErrorHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 771
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 775
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;-><init>()V

    .line 776
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 777
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->addSupportedCountry(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0

    .line 723
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasAddress:Z

    .line 479
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->address_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 480
    return-object p0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml:Z

    .line 426
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->descriptionHtml_:Ljava/lang/String;

    .line 427
    return-object p0
.end method

.method public setErrorHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml:Z

    .line 529
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->errorHtml_:Ljava/lang/String;

    .line 530
    return-object p0
.end method

.method public setResponseAddressParam(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasResponseAddressParam:Z

    .line 375
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->responseAddressParam_:Ljava/lang/String;

    .line 376
    return-object p0
.end method

.method public setResponseCheckboxesParam(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasResponseCheckboxesParam:Z

    .line 392
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam_:Ljava/lang/String;

    .line 393
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasTitle:Z

    .line 409
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->title_:Ljava/lang/String;

    .line 410
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasResponseAddressParam()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getResponseAddressParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasResponseCheckboxesParam()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getResponseCheckboxesParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 629
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 632
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 633
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 635
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckboxList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    .line 636
    .local v0, element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 638
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 639
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 641
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 642
    .local v0, element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 644
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 645
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getErrorHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 647
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getRequiredFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 648
    .local v0, element:Ljava/lang/Integer;
    const/16 v2, 0x9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_2

    .line 650
    .end local v0           #element:Ljava/lang/Integer;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getSupportedCountryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;

    .line 651
    .local v0, element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 653
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    :cond_9
    return-void
.end method
