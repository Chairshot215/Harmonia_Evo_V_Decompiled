.class public Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "ContactEntry.java"


# static fields
.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field public static final TYPE_PRIORITY_HIGH:B = 0x1t

.field public static final TYPE_PRIORITY_LOW:B = 0x3t

.field public static final TYPE_PRIORITY_NORMAL:B = 0x2t

.field public static final TYPE_SENSITIVITY_CONFIDENTIAL:B = 0x1t

.field public static final TYPE_SENSITIVITY_NORMAL:B = 0x2t

.field public static final TYPE_SENSITIVITY_PERSONAL:B = 0x3t

.field public static final TYPE_SENSITIVITY_PRIVATE:B = 0x4t


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

.field private subject:Ljava/lang/String;

.field private final userDefinedFields:Ljava/util/Vector;

.field private final webSites:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 71
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

    .line 57
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 63
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 72
    return-void
.end method


# virtual methods
.method public addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public addHobby(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 479
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 480
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 481
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 482
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    .line 483
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    .line 484
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    .line 486
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    .line 488
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    .line 489
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    .line 490
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 491
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 492
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    .line 493
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    .line 497
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 498
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 499
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 500
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 501
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 502
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 503
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 504
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 505
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 506
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 507
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 508
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 509
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 510
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 511
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 512
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 514
    return-void
.end method

.method public getBillingInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarLinks()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    return-object v0
.end method

.method public getDirectoryServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getEvents()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    return-object v0
.end method

.method public getExternalIds()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    return-object v0
.end method

.method public getHobbies()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    return-object v0
.end method

.method public getImAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public getJots()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    return-object v0
.end method

.method public getLanguages()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    return-object v0
.end method

.method public getLinkPhotoETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaidenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    return-object v0
.end method

.method public getMileage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/google/wireless/gdata2/contacts/data/Name;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    return-object v0
.end method

.method public getPostalAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getPriority()B
    .locals 1

    .prologue
    .line 378
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    return v0
.end method

.method public getRelations()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    return-object v0
.end method

.method public getSensitivity()B
    .locals 1

    .prologue
    .line 393
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDefinedFields()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    return-object v0
.end method

.method public getWebSites()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    return-object v0
.end method

.method public setBillingInformation(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setDirectoryServer(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setInitials(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setLinkPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMaidenName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setMileage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    .line 444
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setPriority(B)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 386
    return-void
.end method

.method public setSensitivity(B)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 402
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    .line 430
    return-void
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 517
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 518
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const-string v0, "ContactEntry:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const-string v0, " linkPhotoHref:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    const-string v0, " linkPhotoType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 527
    const-string v0, " linkPhotoEtag:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 530
    const-string v0, " directoryServer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 533
    const-string v0, " gender:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 536
    const-string v0, " initials:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    :cond_5
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 539
    const-string v0, " maidenName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    :cond_6
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 542
    const-string v0, " mileage:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    :cond_7
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 545
    const-string v0, " nickname:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    :cond_8
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 548
    const-string v0, " occupaton:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :cond_9
    const-string v0, " priority:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 552
    const-string v0, " sensitivity:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 554
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 555
    const-string v0, " shortName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    :cond_a
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 558
    const-string v0, " subject:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    :cond_b
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 561
    const-string v0, " birthday:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    :cond_c
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 564
    const-string v0, " billingInformation:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    :cond_d
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    if-eqz v0, :cond_e

    .line 568
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->toString(Ljava/lang/StringBuffer;)V

    .line 569
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    :cond_e
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 572
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 573
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 575
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 577
    :cond_f
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 578
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 579
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 581
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 583
    :cond_10
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 584
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 585
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 587
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 589
    :cond_11
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 590
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 591
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->toString(Ljava/lang/StringBuffer;)V

    .line 593
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 595
    :cond_12
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 596
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 597
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->toString(Ljava/lang/StringBuffer;)V

    .line 599
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 601
    :cond_13
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 602
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 603
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->toString(Ljava/lang/StringBuffer;)V

    .line 605
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 607
    :cond_14
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 608
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 609
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->toString(Ljava/lang/StringBuffer;)V

    .line 611
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 613
    :cond_15
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 614
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 615
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->toString(Ljava/lang/StringBuffer;)V

    .line 617
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 619
    :cond_16
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 620
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 621
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/Event;->toString(Ljava/lang/StringBuffer;)V

    .line 623
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 625
    :cond_17
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 626
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 627
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->toString(Ljava/lang/StringBuffer;)V

    .line 629
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 631
    :cond_18
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 632
    :goto_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 633
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 637
    :cond_19
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 638
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 639
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 641
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 643
    :cond_1a
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 644
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 645
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 646
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->toString(Ljava/lang/StringBuffer;)V

    .line 647
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 649
    :cond_1b
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 650
    :goto_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 651
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->toString(Ljava/lang/StringBuffer;)V

    .line 653
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 655
    :cond_1c
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 656
    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 657
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 658
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->toString(Ljava/lang/StringBuffer;)V

    .line 659
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 661
    :cond_1d
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 662
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 663
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->toString(Ljava/lang/StringBuffer;)V

    .line 665
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 667
    :cond_1e
    return-void
.end method

.method public validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->validate()V

    .line 671
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "female"

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "male"

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "invalid gender \"%s\", must be one of \"%s\" or \"%s\""

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "female"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "male"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->validate()V

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->validate()V

    goto :goto_1

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 683
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->validate()V

    goto :goto_2

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 686
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->validate()V

    goto :goto_3

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 689
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->validate()V

    goto :goto_4

    .line 691
    :cond_5
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 692
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->validate()V

    goto :goto_5

    .line 694
    :cond_6
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 695
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->validate()V

    goto :goto_6

    .line 698
    :cond_7
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 699
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->validate()V

    goto :goto_7

    .line 701
    :cond_8
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 702
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Event;->validate()V

    goto :goto_8

    .line 704
    :cond_9
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 705
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->validate()V

    goto :goto_9

    .line 707
    :cond_a
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 708
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Language;->validate()V

    goto :goto_a

    .line 710
    :cond_b
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 711
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Relation;->validate()V

    goto :goto_b

    .line 713
    :cond_c
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 714
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->validate()V

    goto :goto_c

    .line 716
    :cond_d
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 717
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->validate()V

    goto :goto_d

    .line 719
    :cond_e
    return-void
.end method
