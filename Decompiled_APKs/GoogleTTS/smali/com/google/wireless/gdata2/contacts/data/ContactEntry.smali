.class public Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "ContactEntry.java"


# instance fields
.field private billingInformation:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private final calendarLinks:Ljava/util/Vector;

.field private directoryServer:Ljava/lang/String;

.field private final emailAddresses:Ljava/util/Vector;

.field private final events:Ljava/util/Vector;

.field private final extendedProperties:Ljava/util/Vector;

.field private final externalIds:Ljava/util/Vector;

.field private gender:Ljava/lang/String;

.field private final groups:Ljava/util/Vector;

.field private final hobbies:Ljava/util/Vector;

.field private final imAddresses:Ljava/util/Vector;

.field private initials:Ljava/lang/String;

.field private final jots:Ljava/util/Vector;

.field private final languages:Ljava/util/Vector;

.field private linkPhotoEtag:Ljava/lang/String;

.field private linkPhotoHref:Ljava/lang/String;

.field private linkPhotoType:Ljava/lang/String;

.field private maidenName:Ljava/lang/String;

.field private mileage:Ljava/lang/String;

.field private name:Lcom/google/wireless/gdata2/contacts/data/Name;

.field private nickname:Ljava/lang/String;

.field private occupation:Ljava/lang/String;

.field private final organizations:Ljava/util/Vector;

.field private final phoneNumbers:Ljava/util/Vector;

.field private final postalAddresses:Ljava/util/Vector;

.field private priority:B

.field private final relations:Ljava/util/Vector;

.field private sensitivity:B

.field private shortName:Ljava/lang/String;

.field private final sipAddresses:Ljava/util/Vector;

.field private subject:Ljava/lang/String;

.field private final userDefinedFields:Ljava/util/Vector;

.field private final webSites:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 74
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    .line 60
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 66
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 75
    return-void
.end method


# virtual methods
.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "sb"

    .prologue
    .line 534
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 535
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    const-string v1, "ContactEntry:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    const-string v1, " linkPhotoHref:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 541
    const-string v1, " linkPhotoType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 544
    const-string v1, " linkPhotoEtag:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 547
    const-string v1, " directoryServer:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    :cond_3
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 550
    const-string v1, " gender:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    :cond_4
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 553
    const-string v1, " initials:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    :cond_5
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 556
    const-string v1, " maidenName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    :cond_6
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 559
    const-string v1, " mileage:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    :cond_7
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 562
    const-string v1, " nickname:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    :cond_8
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 565
    const-string v1, " occupaton:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    :cond_9
    const-string v1, " priority:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 569
    const-string v1, " sensitivity:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 571
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 572
    const-string v1, " shortName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    :cond_a
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 575
    const-string v1, " subject:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    :cond_b
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 578
    const-string v1, " birthday:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    :cond_c
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 581
    const-string v1, " billingInformation:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    :cond_d
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    if-eqz v1, :cond_e

    .line 585
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->toString(Ljava/lang/StringBuffer;)V

    .line 586
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    :cond_e
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 589
    .local v0, iter:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 590
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 592
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 594
    :cond_f
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 595
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 596
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 598
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 600
    :cond_10
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 601
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 602
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 604
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 606
    :cond_11
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 607
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 608
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->toString(Ljava/lang/StringBuffer;)V

    .line 610
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 612
    :cond_12
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 613
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 614
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->toString(Ljava/lang/StringBuffer;)V

    .line 616
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 618
    :cond_13
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 619
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 620
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->toString(Ljava/lang/StringBuffer;)V

    .line 622
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 624
    :cond_14
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 625
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 626
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->toString(Ljava/lang/StringBuffer;)V

    .line 628
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 630
    :cond_15
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 631
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 632
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->toString(Ljava/lang/StringBuffer;)V

    .line 634
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 636
    :cond_16
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 637
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 638
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Event;->toString(Ljava/lang/StringBuffer;)V

    .line 640
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 642
    :cond_17
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 643
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 644
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->toString(Ljava/lang/StringBuffer;)V

    .line 646
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 648
    :cond_18
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 649
    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 650
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 654
    :cond_19
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 655
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 656
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 658
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 660
    :cond_1a
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 661
    :goto_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 662
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->toString(Ljava/lang/StringBuffer;)V

    .line 664
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 666
    :cond_1b
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 667
    :goto_d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 668
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->toString(Ljava/lang/StringBuffer;)V

    .line 670
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 672
    :cond_1c
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 673
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 674
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->toString(Ljava/lang/StringBuffer;)V

    .line 676
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 678
    :cond_1d
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 679
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 680
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->toString(Ljava/lang/StringBuffer;)V

    .line 682
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 684
    :cond_1e
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 685
    :goto_10
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 686
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 688
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 690
    :cond_1f
    return-void
.end method
