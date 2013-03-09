.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PromotedDoc"
.end annotation


# instance fields
.field private cachedSize:I

.field private descriptionHtml_:Ljava/lang/String;

.field private detailsUrl_:Ljava/lang/String;

.field private hasDescriptionHtml:Z

.field private hasDetailsUrl:Z

.field private hasSubtitle:Z

.field private hasTitle:Z

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->title_:Ljava/lang/String;

    .line 489
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->subtitle_:Ljava/lang/String;

    .line 505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    .line 539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->descriptionHtml_:Ljava/lang/String;

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->detailsUrl_:Ljava/lang/String;

    .line 607
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->cachedSize:I

    .line 467
    return-void
.end method


# virtual methods
.method public addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .locals 1
    .parameter "value"

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->cachedSize:I

    if-gez v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getSerializedSize()I

    .line 614
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->cachedSize:I

    return v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 619
    const/4 v2, 0x0

    .line 620
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasSubtitle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 625
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getImageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 629
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 632
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDescriptionHtml()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 633
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 636
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDetailsUrl()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 637
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getDetailsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 640
    :cond_4
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->cachedSize:I

    .line 641
    return v2
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->subtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescriptionHtml()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasDetailsUrl()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDetailsUrl:Z

    return v0
.end method

.method public hasSubtitle()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasSubtitle:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 650
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 654
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 655
    :sswitch_0
    return-object p0

    .line 660
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 664
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 668
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 669
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 670
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 674
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 678
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 650
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 464
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    move-result-object v0

    return-object v0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .locals 1
    .parameter "value"

    .prologue
    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDescriptionHtml:Z

    .line 544
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->descriptionHtml_:Ljava/lang/String;

    .line 545
    return-object p0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .locals 1
    .parameter "value"

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDetailsUrl:Z

    .line 561
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->detailsUrl_:Ljava/lang/String;

    .line 562
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .locals 1
    .parameter "value"

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasSubtitle:Z

    .line 494
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->subtitle_:Ljava/lang/String;

    .line 495
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .locals 1
    .parameter "value"

    .prologue
    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasTitle:Z

    .line 477
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->title_:Ljava/lang/String;

    .line 478
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
    .line 590
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasSubtitle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 596
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 597
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 599
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDescriptionHtml()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 600
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 602
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDetailsUrl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 603
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getDetailsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 605
    :cond_4
    return-void
.end method
