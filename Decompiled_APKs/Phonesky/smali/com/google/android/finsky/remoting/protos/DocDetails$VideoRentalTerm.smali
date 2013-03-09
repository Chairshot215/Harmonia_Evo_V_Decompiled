.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoRentalTerm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private hasOfferAbbreviation:Z

.field private hasOfferType:Z

.field private hasRentalHeader:Z

.field private offerAbbreviation_:Ljava/lang/String;

.field private offerType_:I

.field private rentalHeader_:Ljava/lang/String;

.field private term_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3304
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3435
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->offerType_:I

    .line 3452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->offerAbbreviation_:Ljava/lang/String;

    .line 3469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->rentalHeader_:Ljava/lang/String;

    .line 3485
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->term_:Ljava/util/List;

    .line 3546
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->cachedSize:I

    .line 3304
    return-void
.end method


# virtual methods
.method public addTerm(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    .locals 1
    .parameter "value"

    .prologue
    .line 3502
    if-nez p1, :cond_0

    .line 3503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3505
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->term_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->term_:Ljava/util/List;

    .line 3508
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->term_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3509
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3549
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->cachedSize:I

    if-gez v0, :cond_0

    .line 3551
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getSerializedSize()I

    .line 3553
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->cachedSize:I

    return v0
.end method

.method public getOfferAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->offerAbbreviation_:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferType()I
    .locals 1

    .prologue
    .line 3437
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->offerType_:I

    return v0
.end method

.method public getRentalHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->rentalHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3558
    const/4 v2, 0x0

    .line 3559
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasOfferType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3560
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getOfferType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3563
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasOfferAbbreviation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3564
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getOfferAbbreviation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3567
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasRentalHeader()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3568
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getRentalHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3571
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getTermList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    .line 3572
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3575
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    :cond_3
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->cachedSize:I

    .line 3576
    return v2
.end method

.method public getTermList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3488
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->term_:Ljava/util/List;

    return-object v0
.end method

.method public hasOfferAbbreviation()Z
    .locals 1

    .prologue
    .line 3454
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasOfferAbbreviation:Z

    return v0
.end method

.method public hasOfferType()Z
    .locals 1

    .prologue
    .line 3436
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasOfferType:Z

    return v0
.end method

.method public hasRentalHeader()Z
    .locals 1

    .prologue
    .line 3471
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasRentalHeader:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3584
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3585
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3589
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3590
    :sswitch_0
    return-object p0

    .line 3595
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    goto :goto_0

    .line 3599
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->setOfferAbbreviation(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    goto :goto_0

    .line 3603
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->setRentalHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    goto :goto_0

    .line 3607
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;-><init>()V

    .line 3608
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 3609
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->addTerm(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    goto :goto_0

    .line 3585
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x23 -> :sswitch_4
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
    .line 3301
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    move-result-object v0

    return-object v0
.end method

.method public setOfferAbbreviation(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    .locals 1
    .parameter "value"

    .prologue
    .line 3456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasOfferAbbreviation:Z

    .line 3457
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->offerAbbreviation_:Ljava/lang/String;

    .line 3458
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    .locals 1
    .parameter "value"

    .prologue
    .line 3439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasOfferType:Z

    .line 3440
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->offerType_:I

    .line 3441
    return-object p0
.end method

.method public setRentalHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    .locals 1
    .parameter "value"

    .prologue
    .line 3473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasRentalHeader:Z

    .line 3474
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->rentalHeader_:Ljava/lang/String;

    .line 3475
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
    .line 3532
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasOfferType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3533
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getOfferType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3535
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasOfferAbbreviation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3536
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getOfferAbbreviation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3538
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->hasRentalHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3539
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getRentalHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3541
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getTermList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    .line 3542
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3544
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    :cond_3
    return-void
.end method
