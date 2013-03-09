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
.method public addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V
    .locals 1
    .parameter "calendarLink"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V
    .locals 1
    .parameter "emailAddress"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .locals 1
    .parameter "extendedProperty"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V
    .locals 1
    .parameter "externalId"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public addHobby(Ljava/lang/String;)V
    .locals 1
    .parameter "hobby"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V
    .locals 1
    .parameter "imAddress"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V
    .locals 1
    .parameter "jot"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V
    .locals 1
    .parameter "organization"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V
    .locals 1
    .parameter "postalAddress"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V
    .locals 1
    .parameter "relation"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public addSipAddress(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)V
    .locals 1
    .parameter "sipAddress"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V
    .locals 1
    .parameter "userDefinedField"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V
    .locals 1
    .parameter "webSite"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 496
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 497
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 498
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 499
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    .line 500
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    .line 501
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    .line 502
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    .line 504
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    .line 507
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 508
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 509
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    .line 510
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    .line 511
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    .line 512
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    .line 513
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    .line 514
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 515
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 516
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 517
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 518
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 519
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 520
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 521
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 522
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 523
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 524
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 525
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 526
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 527
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 528
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 529
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 530
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 531
    return-void
.end method

.method public getBillingInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarLinks()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    return-object v0
.end method

.method public getDirectoryServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getEvents()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    return-object v0
.end method

.method public getExternalIds()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    return-object v0
.end method

.method public getHobbies()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    return-object v0
.end method

.method public getImAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public getJots()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    return-object v0
.end method

.method public getLanguages()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    return-object v0
.end method

.method public getLinkPhotoETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaidenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    return-object v0
.end method

.method public getMileage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/google/wireless/gdata2/contacts/data/Name;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    return-object v0
.end method

.method public getPostalAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getPriority()B
    .locals 1

    .prologue
    .line 395
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    return v0
.end method

.method public getRelations()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    return-object v0
.end method

.method public getSensitivity()B
    .locals 1

    .prologue
    .line 410
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSipAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDefinedFields()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    return-object v0
.end method

.method public getWebSites()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    return-object v0
.end method

.method public setBillingInformation(Ljava/lang/String;)V
    .locals 0
    .parameter "billingInformation"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setDirectoryServer(Ljava/lang/String;)V
    .locals 0
    .parameter "directoryServer"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setInitials(Ljava/lang/String;)V
    .locals 0
    .parameter "initials"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setLinkPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "href"
    .parameter "type"
    .parameter "photoEtag"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMaidenName(Ljava/lang/String;)V
    .locals 0
    .parameter "maidenName"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setMileage(Ljava/lang/String;)V
    .locals 0
    .parameter "mileage"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    .line 461
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .locals 0
    .parameter "occupation"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setPriority(B)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 402
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 403
    return-void
.end method

.method public setSensitivity(B)V
    .locals 0
    .parameter "sensitiviy"

    .prologue
    .line 418
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 419
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0
    .parameter "shortName"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    .line 447
    return-void
.end method

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

.method public validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->validate()V

    .line 694
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "female"

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "male"

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "invalid gender \"%s\", must be one of \"%s\" or \"%s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "female"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "male"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, iter:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->validate()V

    goto :goto_0

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 703
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->validate()V

    goto :goto_1

    .line 705
    :cond_2
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 706
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->validate()V

    goto :goto_2

    .line 708
    :cond_3
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 709
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->validate()V

    goto :goto_3

    .line 711
    :cond_4
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 712
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->validate()V

    goto :goto_4

    .line 714
    :cond_5
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 715
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->validate()V

    goto :goto_5

    .line 717
    :cond_6
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 718
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->validate()V

    goto :goto_6

    .line 721
    :cond_7
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 722
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->validate()V

    goto :goto_7

    .line 724
    :cond_8
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 725
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Event;->validate()V

    goto :goto_8

    .line 727
    :cond_9
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 728
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->validate()V

    goto :goto_9

    .line 730
    :cond_a
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 731
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Language;->validate()V

    goto :goto_a

    .line 733
    :cond_b
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 734
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->validate()V

    goto :goto_b

    .line 736
    :cond_c
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 737
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->validate()V

    goto :goto_c

    .line 739
    :cond_d
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 740
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->validate()V

    goto :goto_d

    .line 742
    :cond_e
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 743
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->validate()V

    goto :goto_e

    .line 745
    :cond_f
    return-void
.end method
