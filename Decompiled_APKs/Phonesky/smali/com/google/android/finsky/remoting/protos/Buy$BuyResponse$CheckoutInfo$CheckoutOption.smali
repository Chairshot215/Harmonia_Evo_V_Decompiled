.class public final Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckoutOption"
.end annotation


# instance fields
.field private cachedSize:I

.field private deprecatedInstrumentInapplicableReason_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disabledReason_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encodedAdjustedCart_:Ljava/lang/String;

.field private footerHtml_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private footnoteHtml_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private formOfPayment_:Ljava/lang/String;

.field private hasEncodedAdjustedCart:Z

.field private hasFormOfPayment:Z

.field private hasInstrument:Z

.field private hasInstrumentFamily:Z

.field private hasInstrumentId:Z

.field private hasPurchaseCookie:Z

.field private hasSelectedInstrument:Z

.field private hasSummary:Z

.field private hasTotal:Z

.field private instrumentFamily_:I

.field private instrumentId_:Ljava/lang/String;

.field private instrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private item_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseCookie_:Ljava/lang/String;

.field private selectedInstrument_:Z

.field private subItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;"
        }
    .end annotation
.end field

.field private summary_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

.field private total_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 304
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->formOfPayment_:Ljava/lang/String;

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentId_:Ljava/lang/String;

    .line 343
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentFamily_:I

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->deprecatedInstrumentInapplicableReason_:Ljava/util/List;

    .line 386
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason_:Ljava/util/List;

    .line 420
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->selectedInstrument_:Z

    .line 437
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 456
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item_:Ljava/util/List;

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem_:Ljava/util/List;

    .line 523
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 542
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml_:Ljava/util/List;

    .line 575
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml_:Ljava/util/List;

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->encodedAdjustedCart_:Ljava/lang/String;

    .line 626
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 646
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->purchaseCookie_:Ljava/lang/String;

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->cachedSize:I

    .line 304
    return-void
.end method


# virtual methods
.method public addDeprecatedInstrumentInapplicableReason(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 2
    .parameter "value"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->deprecatedInstrumentInapplicableReason_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->deprecatedInstrumentInapplicableReason_:Ljava/util/List;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->deprecatedInstrumentInapplicableReason_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-object p0
.end method

.method public addDisabledReason(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason_:Ljava/util/List;

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    return-object p0
.end method

.method public addFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 559
    if-nez p1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml_:Ljava/util/List;

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    return-object p0
.end method

.method public addFootnoteHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 592
    if-nez p1, :cond_0

    .line 593
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml_:Ljava/util/List;

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    return-object p0
.end method

.method public addItem(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item_:Ljava/util/List;

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    return-object p0
.end method

.method public addSubItem(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem_:Ljava/util/List;

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->cachedSize:I

    if-gez v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSerializedSize()I

    .line 756
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->cachedSize:I

    return v0
.end method

.method public getDeprecatedInstrumentInapplicableReasonList()Ljava/util/List;
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
    .line 362
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->deprecatedInstrumentInapplicableReason_:Ljava/util/List;

    return-object v0
.end method

.method public getDisabledReasonCount()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDisabledReasonList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason_:Ljava/util/List;

    return-object v0
.end method

.method public getEncodedAdjustedCart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->encodedAdjustedCart_:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterHtmlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml_:Ljava/util/List;

    return-object v0
.end method

.method public getFootnoteHtmlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml_:Ljava/util/List;

    return-object v0
.end method

.method public getFormOfPayment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->formOfPayment_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method public getInstrumentFamily()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentFamily_:I

    return v0
.end method

.method public getInstrumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item_:Ljava/util/List;

    return-object v0
.end method

.method public getPurchaseCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->purchaseCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedInstrument()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->selectedInstrument_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 761
    const/4 v3, 0x0

    .line 762
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasFormOfPayment()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 763
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFormOfPayment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 767
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getEncodedAdjustedCart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 771
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 774
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 775
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    const/16 v4, 0x10

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 778
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSubItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 779
    .restart local v1       #element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    const/16 v4, 0x11

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 782
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 783
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 787
    :cond_5
    const/4 v0, 0x0

    .line 788
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFooterHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 789
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 792
    .end local v1           #element:Ljava/lang/String;
    :cond_6
    add-int/2addr v3, v0

    .line 793
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFooterHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 795
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentFamily()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 796
    const/16 v4, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 800
    :cond_7
    const/4 v0, 0x0

    .line 801
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getDeprecatedInstrumentInapplicableReasonList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 802
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3

    .line 805
    .end local v1           #element:Ljava/lang/Integer;
    :cond_8
    add-int/2addr v3, v0

    .line 806
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getDeprecatedInstrumentInapplicableReasonList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 808
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSelectedInstrument()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 809
    const/16 v4, 0x20

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSelectedInstrument()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 812
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSummary()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 813
    const/16 v4, 0x21

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSummary()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 817
    :cond_a
    const/4 v0, 0x0

    .line 818
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 819
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4

    .line 822
    .end local v1           #element:Ljava/lang/String;
    :cond_b
    add-int/2addr v3, v0

    .line 823
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 825
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 826
    const/16 v4, 0x2b

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 829
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasPurchaseCookie()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 830
    const/16 v4, 0x2d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 834
    :cond_d
    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getDisabledReasonList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 836
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_5

    .line 839
    .end local v1           #element:Ljava/lang/String;
    :cond_e
    add-int/2addr v3, v0

    .line 840
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getDisabledReasonList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 842
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->cachedSize:I

    .line 843
    return v3
.end method

.method public getSubItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem_:Ljava/util/List;

    return-object v0
.end method

.method public getSummary()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    return-object v0
.end method

.method public getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    return-object v0
.end method

.method public hasEncodedAdjustedCart()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart:Z

    return v0
.end method

.method public hasFormOfPayment()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasFormOfPayment:Z

    return v0
.end method

.method public hasInstrument()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument:Z

    return v0
.end method

.method public hasInstrumentFamily()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentFamily:Z

    return v0
.end method

.method public hasInstrumentId()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentId:Z

    return v0
.end method

.method public hasPurchaseCookie()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasPurchaseCookie:Z

    return v0
.end method

.method public hasSelectedInstrument()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSelectedInstrument:Z

    return v0
.end method

.method public hasSummary()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSummary:Z

    return v0
.end method

.method public hasTotal()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 852
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 856
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    :sswitch_0
    return-object p0

    .line 862
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setFormOfPayment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 866
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setEncodedAdjustedCart(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 870
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 874
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;-><init>()V

    .line 875
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 876
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->addItem(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 880
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;-><init>()V

    .line 881
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 882
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->addSubItem(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 886
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;-><init>()V

    .line 887
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 888
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setTotal(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 892
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->addFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 896
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 900
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->addDeprecatedInstrumentInapplicableReason(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 904
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setSelectedInstrument(Z)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 908
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;-><init>()V

    .line 909
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 910
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setSummary(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 914
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->addFootnoteHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto :goto_0

    .line 918
    :sswitch_d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 919
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 920
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto/16 :goto_0

    .line 924
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setPurchaseCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto/16 :goto_0

    .line 928
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->addDisabledReason(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto/16 :goto_0

    .line 852
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x3a -> :sswitch_2
        0x7a -> :sswitch_3
        0x82 -> :sswitch_4
        0x8a -> :sswitch_5
        0x92 -> :sswitch_6
        0x9a -> :sswitch_7
        0xe8 -> :sswitch_8
        0xf0 -> :sswitch_9
        0x100 -> :sswitch_a
        0x10a -> :sswitch_b
        0x11a -> :sswitch_c
        0x15a -> :sswitch_d
        0x16a -> :sswitch_e
        0x182 -> :sswitch_f
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
    .line 301
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v0

    return-object v0
.end method

.method public setEncodedAdjustedCart(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart:Z

    .line 614
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->encodedAdjustedCart_:Ljava/lang/String;

    .line 615
    return-object p0
.end method

.method public setFormOfPayment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasFormOfPayment:Z

    .line 314
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->formOfPayment_:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 630
    if-nez p1, :cond_0

    .line 631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 633
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument:Z

    .line 634
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 635
    return-object p0
.end method

.method public setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentFamily:Z

    .line 348
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentFamily_:I

    .line 349
    return-object p0
.end method

.method public setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentId:Z

    .line 331
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentId_:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public setPurchaseCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasPurchaseCookie:Z

    .line 651
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->purchaseCookie_:Ljava/lang/String;

    .line 652
    return-object p0
.end method

.method public setSelectedInstrument(Z)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSelectedInstrument:Z

    .line 425
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->selectedInstrument_:Z

    .line 426
    return-object p0
.end method

.method public setSummary(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 444
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSummary:Z

    .line 445
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 446
    return-object p0
.end method

.method public setTotal(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 530
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal:Z

    .line 531
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 532
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
    .line 702
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasFormOfPayment()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFormOfPayment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 706
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getEncodedAdjustedCart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 711
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getItemList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 712
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 714
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSubItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 715
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 717
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 718
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 720
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFooterHtmlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 721
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 723
    .end local v0           #element:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentFamily()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 724
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 726
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getDeprecatedInstrumentInapplicableReasonList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 727
    .local v0, element:Ljava/lang/Integer;
    const/16 v2, 0x1e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_3

    .line 729
    .end local v0           #element:Ljava/lang/Integer;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSelectedInstrument()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 730
    const/16 v2, 0x20

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSelectedInstrument()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 732
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSummary()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 733
    const/16 v2, 0x21

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSummary()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 735
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 736
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x23

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_4

    .line 738
    .end local v0           #element:Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 739
    const/16 v2, 0x2b

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 741
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasPurchaseCookie()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 742
    const/16 v2, 0x2d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 744
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getDisabledReasonList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 745
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_5

    .line 747
    .end local v0           #element:Ljava/lang/String;
    :cond_e
    return-void
.end method
