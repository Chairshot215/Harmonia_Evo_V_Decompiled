.class public Lcom/android/dmportread/TempContact;
.super Ljava/lang/Object;
.source "TempContact.java"


# static fields
.field private static final ASST_TEL:I = 0x12

.field private static final BUSINESS_FAX:I = 0x4

.field private static final BUSINESS_TEL1:I = 0x3

.field private static final BUSINESS_TEL2:I = 0xd

.field private static final CAR_TEL:I = 0xa

.field private static final CATEGORIES:I = 0x13

.field private static final COMPANY_TEL:I = 0xc

.field private static final EMAIL1:I = 0x5

.field private static final EMAIL2:I = 0x10

.field private static final EMAIL3:I = 0x11

.field private static final FIRST_NAME:I = 0x0

.field private static final HOME_FAX:I = 0xb

.field private static final HOME_TEL1:I = 0x8

.field private static final HOME_TEL2:I = 0xe

.field private static final LAST_NAME:I = 0x2

.field private static final MNAME:I = 0x1

.field private static final MOBILE_TEL:I = 0x6

.field public static final NOT_VALID_FIELD:I = 0x7fffffff

.field public static final NOT_VALID_ID:J = 0x7fffffffffffffffL

.field private static final PAGER_TEL:I = 0x9

.field private static final PICTURE:I = 0x14

.field private static final RADIO_TEL:I = 0xf

.field private static final RING_TONE:I = 0x15

.field public static final TEMP_EMAIL_PROJECTION:[Ljava/lang/String; = null

.field public static final TEMP_PEOPLE_PROJECTION:[Ljava/lang/String; = null

.field public static final TEMP_PHONES_PROJECTION:[Ljava/lang/String; = null

.field public static final TOTAL_FIELDS:I = 0x13

.field private static final WEB_PAGE:I = 0x7

.field private static final tag:Ljava/lang/String; = "TmpCont"


# instance fields
.field public mATN:Ljava/lang/String;

.field public mB2TN:Ljava/lang/String;

.field public mBFN:Ljava/lang/String;

.field public mBTN:Ljava/lang/String;

.field public mCarTN:Ljava/lang/String;

.field public mCompanyTN:Ljava/lang/String;

.field public mE1A:Ljava/lang/String;

.field public mE2A:Ljava/lang/String;

.field public mE3A:Ljava/lang/String;

.field public mFName:Ljava/lang/String;

.field public mH2TN:Ljava/lang/String;

.field public mHFN:Ljava/lang/String;

.field public mHTN:Ljava/lang/String;

.field mId:J

.field public mLName:Ljava/lang/String;

.field public mMName:Ljava/lang/String;

.field public mMTN:Ljava/lang/String;

.field public mPN:Ljava/lang/String;

.field public mRTN:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v2

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "data5"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/dmportread/TempContact;->TEMP_PEOPLE_PROJECTION:[Ljava/lang/String;

    .line 83
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/dmportread/TempContact;->TEMP_PHONES_PROJECTION:[Ljava/lang/String;

    .line 98
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/dmportread/TempContact;->TEMP_EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "fname"
    .parameter "lname"
    .parameter "mname"
    .parameter "photo"
    .parameter "ringtone"

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    .line 119
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iput-object p3, p0, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    .line 126
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iput-object p4, p0, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    .line 133
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iput-object p5, p0, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    .line 148
    :cond_2
    iput-wide p1, p0, Lcom/android/dmportread/TempContact;->mId:J

    .line 151
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    .line 152
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dmportread/TempContact;->mUri:Landroid/net/Uri;

    .line 155
    :cond_3
    return-void
.end method

.method public static addPhoneEntry(ILjava/lang/String;Lcom/android/dmportread/TempContact;)V
    .locals 1
    .parameter "type"
    .parameter "data"
    .parameter "newContact"

    .prologue
    .line 657
    packed-switch p0, :pswitch_data_0

    .line 781
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 659
    :pswitch_1
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 660
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 662
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    goto :goto_0

    .line 671
    :pswitch_2
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 672
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    goto :goto_0

    .line 676
    :pswitch_3
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 677
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    goto :goto_0

    .line 681
    :pswitch_4
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 682
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    goto :goto_0

    .line 683
    :cond_2
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 684
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    goto :goto_0

    .line 688
    :pswitch_5
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 689
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    goto :goto_0

    .line 693
    :pswitch_6
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 694
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    goto :goto_0

    .line 698
    :pswitch_7
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 699
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    goto :goto_0

    .line 703
    :pswitch_8
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 704
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    goto :goto_0

    .line 708
    :pswitch_9
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 709
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    goto :goto_0

    .line 713
    :pswitch_a
    iget-object v0, p2, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 714
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    goto :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static insertNewContact(Landroid/content/ContentResolver;Lcom/android/dmportread/TempContact;)V
    .locals 12
    .parameter "resolver"
    .parameter "aTmpContact"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 233
    const/4 v2, -0x1

    .line 234
    .local v2, insertRawContact:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v3, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "account_name"

    const-string v6, "pcsc"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "account_type"

    const-string v6, "com.htc.android.pcsc"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "version"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "deleted"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "aggregation_mode"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sync1"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sync2"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sync3"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sync4"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v4, "DMCmdSvs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create a contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    add-int/lit8 v2, v2, 0x1

    .line 251
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "data2"

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    if-eqz v4, :cond_f

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "data3"

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    if-eqz v4, :cond_10

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "data5"

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    if-eqz v4, :cond_11

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_0
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_1
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 283
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_2
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 292
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_3
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 301
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_4
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 310
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_5
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 319
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_6
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 328
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_7
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 337
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_8
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 346
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_9
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 355
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_a
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 364
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    const/16 v6, 0x13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_b
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 373
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_c
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 382
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_d
    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p1, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 391
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_e
    :try_start_0
    const-string v4, "com.android.contacts"

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 404
    .local v0, a:[Landroid/content/ContentProviderResult;
    array-length v4, v0

    if-lez v4, :cond_12

    .line 406
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget-object v4, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    iput-object v4, p1, Lcom/android/dmportread/TempContact;->mUri:Landroid/net/Uri;

    .line 407
    const-string v4, "DMCmdSvs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/dmportread/TempContact;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    .end local v0           #a:[Landroid/content/ContentProviderResult;
    :goto_3
    return-void

    .line 251
    :cond_f
    const-string v4, ""

    goto/16 :goto_0

    :cond_10
    const-string v4, ""

    goto/16 :goto_1

    :cond_11
    const-string v4, ""

    goto/16 :goto_2

    .line 410
    .restart local v0       #a:[Landroid/content/ContentProviderResult;
    :cond_12
    :try_start_1
    const-string v4, "DMCmdSvs"

    const-string v5, " insert error  "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 413
    .end local v0           #a:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 414
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "DMCmdSvs"

    const-string v5, "%s: %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 416
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 417
    .local v1, e:Landroid/content/OperationApplicationException;
    const-string v4, "DMCmdSvs"

    const-string v5, "%s: %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static setField(ILjava/lang/String;Lcom/android/dmportread/TempContact;)Z
    .locals 1
    .parameter "fieldId"
    .parameter "data"
    .parameter "aTmpContact"

    .prologue
    .line 850
    const/4 v0, 0x1

    .line 851
    .local v0, result:Z
    packed-switch p0, :pswitch_data_0

    .line 908
    :pswitch_0
    const/4 v0, 0x0

    .line 910
    :goto_0
    return v0

    .line 853
    :pswitch_1
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    goto :goto_0

    .line 856
    :pswitch_2
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    goto :goto_0

    .line 859
    :pswitch_3
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    goto :goto_0

    .line 862
    :pswitch_4
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    goto :goto_0

    .line 865
    :pswitch_5
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    goto :goto_0

    .line 868
    :pswitch_6
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    goto :goto_0

    .line 871
    :pswitch_7
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    goto :goto_0

    .line 874
    :pswitch_8
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    goto :goto_0

    .line 877
    :pswitch_9
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    goto :goto_0

    .line 880
    :pswitch_a
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    goto :goto_0

    .line 883
    :pswitch_b
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    goto :goto_0

    .line 886
    :pswitch_c
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    goto :goto_0

    .line 889
    :pswitch_d
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    goto :goto_0

    .line 892
    :pswitch_e
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    goto :goto_0

    .line 895
    :pswitch_f
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    goto :goto_0

    .line 898
    :pswitch_10
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    goto :goto_0

    .line 901
    :pswitch_11
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    goto :goto_0

    .line 904
    :pswitch_12
    iput-object p1, p2, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    goto :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public addEmailEntry(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "data"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 788
    iput-object p2, p0, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 791
    iput-object p2, p0, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    goto :goto_0

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 794
    iput-object p2, p0, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    goto :goto_0
.end method
