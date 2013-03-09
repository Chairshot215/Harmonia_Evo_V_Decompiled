.class public Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SimpleContactInfo;
.super Landroid/provider/HtcUnionContact$SimpleContactInfo;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleContactInfo"
.end annotation


# static fields
.field public static final HAS_PHOTO:Ljava/lang/String; = "hasPhoto"

.field public static final LOOKUP:Ljava/lang/String; = "lookup"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_TYPE:Ljava/lang/String; = "numberType"

.field public static final PERSON_ID:Ljava/lang/String; = "personId"

.field public static final PERSON_LOOKUP_KEY:Ljava/lang/String; = "personLookupKey"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final RECORD_NUMBER:Ljava/lang/String; = "recordNumber"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/HtcUnionContact$SimpleContactInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getHasPhoto()Z
    .locals 1

    iget-boolean v0, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    return v0
.end method

.method public getLookup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->lookup:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberType()I
    .locals 1

    iget v0, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    return v0
.end method

.method public getPersonId()J
    .locals 2

    iget-wide v0, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    return-wide v0
.end method

.method public getPersonIdString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personIdString:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    iget-wide v0, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->raw_contact_id:J

    return-wide v0
.end method

.method public getRecordNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->recordNumber:J

    return-wide v0
.end method

.method public setHasPhoto(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    return-void
.end method

.method public setLookup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->lookup:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    return-void
.end method

.method public setNumberType(I)V
    .locals 0

    iput p1, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    return-void
.end method

.method public setPersonId(J)V
    .locals 0

    iput-wide p1, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    return-void
.end method

.method public setPersonIdString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personIdString:Ljava/lang/String;

    return-void
.end method

.method public setRawContactId(J)V
    .locals 0

    iput-wide p1, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->raw_contact_id:J

    return-void
.end method

.method public setRecordNumber(J)V
    .locals 0

    iput-wide p1, p0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->recordNumber:J

    return-void
.end method
