.class public Lcom/htc/android/mail/eassvc/contact/ContactManager;
.super Ljava/lang/Object;
.source "ContactManager.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASContactPopulate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;
    }
.end annotation


# static fields
.field private static final CATEGORY_RESERVED_WORD:Ljava/lang/String; = "Starred in Android"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final ENTRY_UPDATE_INTERVAL:I = 0x1

.field public static final GROUP_HTC_FAVORITE:Ljava/lang/String; = "HTC Favorite"

.field public static final GROUP_MAPPING:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EAS_CONMGR"

.field public static final UNSUPPORT_COLUMN:[Ljava/lang/String; = null

.field public static final UNSUPPORT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/htceas_unsupport"

.field public static final VERSION_VCARD21_INT:I = 0x1

.field public static final VERSION_VCARD30_INT:I = 0x2

.field private static final tackingUri:Landroid/net/Uri;


# instance fields
.field public final CONTACT_BATCH_INSERT_AMOUT:I

.field mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field private mPIMSyncContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

.field private trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

.field public updateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    .line 86
    sget-object v0, Landroid/provider/Contacts$People;->EAS_TRACKING_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->tackingUri:Landroid/net/Uri;

    .line 91
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->UNSUPPORT_COLUMN:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->GROUP_MAPPING:Ljava/util/Hashtable;

    .line 98
    sget-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->GROUP_MAPPING:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 100
    sget-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->GROUP_MAPPING:Ljava/util/Hashtable;

    const-string v1, "Family"

    const-string v2, "Family"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->GROUP_MAPPING:Ljava/util/Hashtable;

    const-string v1, "Friends"

    const-string v2, "Friends"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->GROUP_MAPPING:Ljava/util/Hashtable;

    const-string v1, "Coworkers"

    const-string v2, "Coworkers"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "syncSource"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateInterval:I

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->CONTACT_BATCH_INSERT_AMOUT:I

    .line 138
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mPIMSyncContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    .line 141
    new-instance v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mPIMSyncContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/android/mail/eassvc/contact/ContactManager;->tackingUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    .line 142
    iput-object p3, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/eassvc/contact/ContactManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mPIMSyncContext:Landroid/content/Context;

    return-object v0
.end method

.method private addCategories(Lcom/htc/android/mail/eassvc/contact/Contact;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "pimContact"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/contact/Contact;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, newCates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->getCategories()Ljava/util/ArrayList;

    move-result-object v5

    .line 431
    .local v5, currentCategories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v4, categoryNeedInsert:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v3, v1, v7

    .line 435
    .local v3, category:Ljava/lang/String;
    const-string v13, "HTC Favorite"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 434
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {v5, v3}, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->findCategory(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    move-result-object v6

    .line 439
    .local v6, find:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    if-nez v6, :cond_0

    .line 440
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->findCategory(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    move-result-object v6

    .line 441
    if-nez v6, :cond_0

    .line 442
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 448
    .end local v3           #category:Ljava/lang/String;
    .end local v6           #find:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 449
    sget-object v13, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 450
    .local v12, uriBuilder:Landroid/net/Uri$Builder;
    const-string v13, "caller_is_syncadapter"

    const-string v14, "true"

    invoke-virtual {v12, v13, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 451
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 452
    .local v11, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 453
    .restart local v3       #category:Ljava/lang/String;
    new-instance v8, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    invoke-direct {v8}, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;-><init>()V

    .line 454
    .local v8, item:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    iput-object v3, v8, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    .line 455
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v8, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->backRefId:I

    .line 456
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v13, Lcom/htc/android/mail/eassvc/contact/ContactManager;->GROUP_MAPPING:Ljava/util/Hashtable;

    invoke-virtual {p0, v13, v3}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->findKey(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 458
    .local v10, mappingkey:Ljava/lang/String;
    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 459
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v10, :cond_3

    .line 460
    const-string v13, "title"

    invoke-virtual {v2, v13, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 464
    :goto_3
    const-string v13, "account_name"

    iget-object v14, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v14, v14, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 465
    const-string v13, "account_type"

    iget-object v14, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v14, v14, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 466
    const-string v13, "group_visible"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 467
    const-string v13, "should_sync"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 468
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 462
    :cond_3
    const-string v13, "title"

    invoke-virtual {v2, v13, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 476
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #category:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    .end local v10           #mappingkey:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_4
    return-void
.end method

.method private addContacts(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 326
    .local v4, listSize:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v5, newCates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v6, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_6

    .line 331
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v8}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 333
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASContact;

    .line 335
    .local v2, easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    sget-boolean v8, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "EAS_CONMGR"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parsing contact #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 337
    :cond_0
    new-instance v7, Lcom/htc/android/mail/eassvc/contact/Contact;

    invoke-direct {v7}, Lcom/htc/android/mail/eassvc/contact/Contact;-><init>()V

    .line 338
    .local v7, pimContact:Lcom/htc/android/mail/eassvc/contact/Contact;
    invoke-direct {p0, v2, v7}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->populatePIMContact(Lcom/htc/android/mail/eassvc/common/EASContact;Lcom/htc/android/mail/eassvc/contact/Contact;)V

    .line 340
    iget-object v8, v2, Lcom/htc/android/mail/eassvc/common/EASContact;->ServerID:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v8, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->addContact(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/contact/Contact;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 344
    add-int/lit8 v8, v3, 0x1

    :try_start_0
    rem-int/lit8 v8, v8, 0x5

    if-eqz v8, :cond_1

    add-int/lit8 v8, v4, -0x1

    if-ne v3, v8, :cond_4

    .line 346
    :cond_1
    sget-boolean v8, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "EAS_CONMGR"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding contacts. operation size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 347
    :cond_2
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "com.android.contacts"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 348
    sget-boolean v8, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "EAS_CONMGR"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v10, "add contacts finish."

    invoke-static {v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 349
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 350
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_4
    :try_start_1
    iget v8, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateInterval:I

    if-lez v8, :cond_5

    .line 362
    iget v8, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateInterval:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v8}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    new-instance v8, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v9, 0x320

    const-string v10, "add contact fail"

    invoke-direct {v8, v9, v10}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 372
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    .end local v7           #pimContact:Lcom/htc/android/mail/eassvc/contact/Contact;
    :cond_6
    if-lez v4, :cond_7

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v8, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, contacts:Landroid/content/Intent;
    const-string v8, "EAS_CONTACT_SVR_ADD_LIST"

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/htc/android/mail/eassvc/contact/ContactManager$1;

    invoke-direct {v9, p0, v0}, Lcom/htc/android/mail/eassvc/contact/ContactManager$1;-><init>(Lcom/htc/android/mail/eassvc/contact/ContactManager;Landroid/content/Intent;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 381
    .end local v0           #contacts:Landroid/content/Intent;
    :cond_7
    return-void

    .line 364
    .restart local v2       #easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    .restart local v7       #pimContact:Lcom/htc/android/mail/eassvc/contact/Contact;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private addDeleteOp(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1997
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1998
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1999
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    return-void
.end method

.method private checkAddressToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "token"

    .prologue
    .line 1121
    if-nez p1, :cond_0

    .line 1122
    const-string p1, ""

    .line 1124
    .end local p1
    :cond_0
    return-object p1
.end method

.method private deleteContacts(Ljava/util/ArrayList;)V
    .locals 25
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p1, delObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    sget-boolean v18, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v18, :cond_0

    const-string v18, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "deleteContacts(size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1036
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1038
    .local v13, listSize:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v14, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v17, svrCL:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v12, idMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_3

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 1047
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/eassvc/common/EASContact;

    .line 1049
    .local v8, easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    iget-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASContact;->ServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->getLocalIDbyServerID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1050
    .local v5, contactLocalID:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1044
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1055
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    .line 1056
    .local v11, idMap:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v5, v11, v18

    .line 1057
    const/16 v18, 0x1

    const/16 v19, 0x0

    aput-object v19, v11, v18

    .line 1058
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    sget-boolean v18, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v18, :cond_2

    const-string v18, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "deleting contact #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v10, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1064
    :cond_2
    sget-object v18, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 1065
    .local v4, builder:Landroid/net/Uri$Builder;
    const-string v18, "caller_is_syncadapter"

    const-string v19, "true"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1066
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1068
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->addDeleteOp(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 1080
    .end local v4           #builder:Landroid/net/Uri$Builder;
    .end local v5           #contactLocalID:Ljava/lang/String;
    .end local v8           #easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    .end local v11           #idMap:[Ljava/lang/String;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "com.android.contacts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1087
    .local v15, operationResult:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1088
    const/4 v10, 0x0

    :goto_2
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_5

    .line 1089
    aget-object v18, v15, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1090
    .local v16, result:I
    if-gez v16, :cond_4

    .line 1091
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v9, v18, v19

    .line 1092
    .local v9, failID:Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1093
    new-instance v18, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v19, 0x320

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "delete contact("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") fail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v18

    .line 1081
    .end local v9           #failID:Ljava/lang/String;
    .end local v15           #operationResult:[Landroid/content/ContentProviderResult;
    .end local v16           #result:I
    :catch_0
    move-exception v7

    .line 1082
    .local v7, e:Ljava/lang/Exception;
    const-string v18, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v19, v0

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v21, "%s: %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1083
    new-instance v18, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v19, 0x320

    const-string v20, "delete contact fail"

    invoke-direct/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v18

    .line 1088
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v15       #operationResult:[Landroid/content/ContentProviderResult;
    .restart local v16       #result:I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1097
    .end local v16           #result:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->updateRecord(Ljava/util/ArrayList;Z)V

    .line 1100
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 1101
    new-instance v6, Landroid/content/Intent;

    const-string v18, "anddroid.intent.action.FAVORITE_CHANGE"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v6, contacts:Landroid/content/Intent;
    const-string v18, "EAS_CONTACT_SVR_DEL_LIST"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1103
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/htc/android/mail/eassvc/contact/ContactManager$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/android/mail/eassvc/contact/ContactManager$3;-><init>(Lcom/htc/android/mail/eassvc/contact/ContactManager;Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 1114
    .end local v6           #contacts:Landroid/content/Intent;
    :cond_6
    return-void

    .line 1111
    :cond_7
    new-instance v18, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v19, 0x320

    const-string v20, "trackManager is null"

    invoke-direct/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v18
.end method

.method private findContact(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASContact;
    .locals 3
    .parameter
    .parameter "personId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/htc/android/mail/eassvc/common/EASContact;"
        }
    .end annotation

    .prologue
    .line 1487
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASContact;

    .line 1488
    .local v0, contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ClientId:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1491
    .end local v0           #contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private foldingString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "version"

    .prologue
    const/4 v2, 0x0

    .line 2015
    move-object v0, p1

    .line 2017
    .local v0, strFoldingString:Ljava/lang/String;
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2018
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2023
    :cond_0
    :goto_0
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2025
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 2026
    const-string v1, "\n"

    const-string v2, "\r\n "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2027
    move-object v0, p1

    move-object v1, v0

    .line 2034
    :goto_1
    return-object v1

    .line 2019
    :cond_1
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2020
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2029
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 2030
    const-string v1, "\n"

    const-string v2, "\n "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2031
    move-object v0, p1

    move-object v1, v0

    .line 2032
    goto :goto_1

    .line 2034
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getLocalIDbyServerID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "serverID"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getLocalIDbyServerID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertContactToCategoty(Lcom/htc/android/mail/eassvc/contact/Contact;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 14
    .parameter "pimContact"
    .parameter
    .parameter
    .parameter "rawContactOpIndex"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/contact/Contact;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p2, newCate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    .local p3, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-gez p4, :cond_1

    if-gez p5, :cond_1

    .line 483
    const-string v10, "EAS_CONMGR"

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v12, "insertContactToCategoty() error, contact id cannot be null."

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void

    .line 486
    :cond_1
    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 487
    .local v9, rawContUriBuilder:Landroid/net/Uri$Builder;
    const-string v10, "caller_is_syncadapter"

    const-string v11, "true"

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 488
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 489
    .local v5, dataUriBuilder:Landroid/net/Uri$Builder;
    const-string v10, "caller_is_syncadapter"

    const-string v11, "true"

    invoke-virtual {v5, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 491
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->getCategories()Ljava/util/ArrayList;

    move-result-object v4

    .line 492
    .local v4, currentCategories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v3, v1, v6

    .line 493
    .local v3, cate:Ljava/lang/String;
    const-string v10, "HTC Favorite"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 494
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 495
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v10, "starred"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 496
    if-ltz p4, :cond_3

    .line 497
    const-string v10, "_id=? "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 498
    const/4 v10, 0x0

    move/from16 v0, p4

    invoke-virtual {v2, v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 502
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 500
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    const-string v10, "_id=? "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 505
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    invoke-static {v4, v3}, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->findCategory(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    move-result-object v7

    .line 506
    .local v7, item:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    if-nez v7, :cond_5

    .line 507
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->findCategory(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    move-result-object v7

    .line 508
    if-nez v7, :cond_5

    .line 509
    const-string v10, "HTC Favorite"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 510
    const-string v10, "EAS_CONMGR"

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertContactToCategoty() error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found in group"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_2

    .line 516
    :cond_5
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 517
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    if-ltz p4, :cond_6

    .line 518
    const-string v10, "raw_contact_id"

    move/from16 v0, p4

    invoke-virtual {v2, v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 522
    :goto_3
    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 523
    iget v10, v7, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->backRefId:I

    if-ltz v10, :cond_7

    .line 524
    const-string v10, "data1"

    iget v11, v7, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->backRefId:I

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 528
    :goto_4
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 520
    :cond_6
    const-string v10, "raw_contact_id"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 526
    :cond_7
    const-string v10, "data1"

    iget v11, v7, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4
.end method

.method private populatePIMContact(Lcom/htc/android/mail/eassvc/common/EASContact;Lcom/htc/android/mail/eassvc/contact/Contact;)V
    .locals 8
    .parameter "easContact"
    .parameter "pimContact"

    .prologue
    const/4 v7, 0x1

    .line 1130
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->FileAs:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    .line 1133
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1135
    :cond_0
    const-string v4, ""

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    .line 1137
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->FirstName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1138
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->FirstName:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    .line 1141
    :cond_1
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->LastName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1142
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    .line 1145
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->LastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    .line 1150
    :cond_3
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1151
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    .line 1154
    :cond_4
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->FirstName:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->firstName:Ljava/lang/String;

    .line 1155
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->LastName:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->lastName:Ljava/lang/String;

    .line 1156
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->YomiFirstName:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->yomiFirstname:Ljava/lang/String;

    .line 1157
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->YomiLastName:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->yomiLastname:Ljava/lang/String;

    .line 1159
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->MiddleName:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->middleName:Ljava/lang/String;

    .line 1160
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Suffix:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->suffix:Ljava/lang/String;

    .line 1161
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Webpage:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->website:Ljava/lang/String;

    .line 1163
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Anniversary:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1164
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Anniversary:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->anniversary:Ljava/lang/String;

    .line 1165
    :cond_5
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Birthday:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1166
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Birthday:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->birthday:Ljava/lang/String;

    .line 1168
    :cond_6
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessTelephoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1169
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneWork:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessTelephoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_7
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeTelephoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1171
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneHome:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeTelephoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_8
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->MobileTelephoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1173
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneMobile:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->MobileTelephoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    :cond_9
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Business2TelephoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1176
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneWork:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Business2TelephoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_a
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessFaxNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1178
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneWorkFax:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessFaxNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_b
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Home2TelephoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1183
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneHome:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Home2TelephoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    :cond_c
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeFaxNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1185
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneHomeFax:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeFaxNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_d
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->PagerNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1190
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->phonePager:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->PagerNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_e
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->AssistantTelephoneNumber:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->assistantTelephone:Ljava/lang/String;

    .line 1196
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->CarTelephoneNumber:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->carTelephone:Ljava/lang/String;

    .line 1197
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->CompanyMainPhone:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->companyMainPhone:Ljava/lang/String;

    .line 1198
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->RadioTelephoneNumber:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->radioTelephone:Ljava/lang/String;

    .line 1201
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->CompanyName:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 1202
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->CompanyName:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->company:Ljava/lang/String;

    .line 1204
    :cond_f
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->JobTitle:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 1205
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->JobTitle:Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->title:Ljava/lang/String;

    .line 1208
    :cond_10
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Category:[Ljava/lang/String;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    .line 1209
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 1210
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_12

    .line 1211
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "Starred in Android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1212
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1210
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1331
    .end local v3           #i:I
    :cond_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1332
    .local v0, addrsHome:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "street"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressStreet:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    const-string v4, "city"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressCity:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    const-string v4, "state"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressState:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    const-string v4, "zip"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressPostalCode:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    const-string v4, "country"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressCountry:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 1342
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1343
    .local v2, addrsWork:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "street"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressStreet:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    const-string v4, "city"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressCity:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    const-string v4, "state"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressState:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    const-string v4, "zip"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressPostalCode:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const-string v4, "country"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressCountry:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    aput-object v2, v4, v7

    .line 1353
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1354
    .local v1, addrsOther:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "street"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressStreet:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    const-string v4, "city"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressCity:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    const-string v4, "state"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressState:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    const-string v4, "zip"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressPostalCode:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    const-string v4, "country"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressCountry:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkAddressToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->postalAddrs:[Ljava/util/HashMap;

    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 1362
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Email1Address:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 1363
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Email1Address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    :cond_13
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Email2Address:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 1365
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Email2Address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    :cond_14
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Email3Address:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 1367
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->emailAddress:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Email3Address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_15
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddr:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 1371
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_16
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddress2:Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 1373
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddress2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_17
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddress3:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 1375
    iget-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->imAddr:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddress3:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_18
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Body:Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 1379
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Body:Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->notes:Ljava/lang/String;

    .line 1383
    :cond_19
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Picture:Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 1384
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->Picture:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->setPhoto(Ljava/lang/String;)V

    .line 1387
    :cond_1a
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/EASContact;->UnsupportedList:Ljava/util/ArrayList;

    iput-object v4, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->UnsupportedList:Ljava/util/ArrayList;

    .line 1405
    return-void
.end method

.method public static removeAllSyncPeople(Landroid/content/ContentResolver;Ljava/lang/String;Z)I
    .locals 12
    .parameter "resolver"
    .parameter "accountName"
    .parameter "removeLocal"

    .prologue
    .line 1434
    const/4 v9, 0x0

    .line 1435
    .local v9, itemCount:I
    sget-object v1, Lcom/htc/android/mail/eassvc/contact/ContactManager;->tackingUri:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v0

    const-string v3, "accountName=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1438
    .local v7, curTracking:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1442
    :cond_0
    if-eqz v7, :cond_1

    .line 1443
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1446
    :cond_1
    if-lez v9, :cond_2

    .line 1448
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1450
    .local v10, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 1451
    .local v11, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "caller_is_syncadapter"

    const-string v1, "true"

    invoke-virtual {v11, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1452
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1453
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_4

    .line 1454
    const-string v0, "account_type=? AND account_name=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.htc.android.mail.eas"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1463
    :goto_0
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    sget-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->tackingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1467
    if-eqz p2, :cond_5

    .line 1468
    const-string v0, "accountName=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1472
    :goto_1
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    if-eqz v10, :cond_2

    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1476
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1482
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v11           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_2
    :goto_2
    return v9

    .line 1442
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1443
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1442
    :cond_3
    throw v0

    .line 1458
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v10       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v11       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_4
    const-string v0, "account_type=? AND account_name=? AND ( sourceid<>? OR deleted=? )"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.htc.android.mail.eas"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 1470
    :cond_5
    const-string v0, "accountName=? AND ( serverId<>? OR _delete=? )"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 1478
    :catch_0
    move-exception v8

    .line 1479
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static removeSyncinfo(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    .line 1426
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1427
    return-void
.end method

.method private updateContactToCategory(Lcom/htc/android/mail/eassvc/contact/Contact;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 14
    .parameter "pimContact"
    .parameter "isStarred"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/contact/Contact;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p3, newCate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    .local p4, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 541
    .local v13, uriBuilder:Landroid/net/Uri$Builder;
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v13, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 542
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 543
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id=? AND mimetype=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/contact/Contact;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "vnd.android.cursor.item/group_membership"

    aput-object v4, v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 545
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    if-eqz p2, :cond_2

    .line 548
    const/4 v11, 0x0

    .line 549
    .local v11, isFavorite:Z
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    .local v7, arr$:[Ljava/lang/String;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v9, v7, v10

    .line 550
    .local v9, cate:Ljava/lang/String;
    const-string v1, "HTC Favorite"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    const/4 v11, 0x1

    .line 549
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 554
    .end local v9           #cate:Ljava/lang/String;
    :cond_1
    if-nez v11, :cond_2

    .line 555
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 556
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v13, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 557
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 558
    const-string v1, "starred"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 559
    const-string v1, "_id=? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/contact/Contact;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 560
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #isFavorite:Z
    .end local v12           #len$:I
    :cond_2
    const/4 v5, -0x1

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/contact/Contact;->getId()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->insertContactToCategoty(Lcom/htc/android/mail/eassvc/contact/Contact;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 564
    return-void
.end method

.method private updateContacts(Ljava/util/ArrayList;)V
    .locals 53
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 567
    .local p1, updObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    sget-boolean v5, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "> updateContacts(size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 568
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v45

    .line 570
    .local v45, listSize:I
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v50, svrCL:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v43, idMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v47, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v46, newCates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    const/16 v41, 0x0

    .local v41, i:I
    :goto_0
    move/from16 v0, v41

    move/from16 v1, v45

    if-ge v0, v1, :cond_c

    .line 577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v5}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 579
    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/htc/android/mail/eassvc/common/EASContact;

    .line 580
    .local v40, easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    const/16 v26, 0x0

    .line 581
    .local v26, contactLocalID:Ljava/lang/String;
    const/16 v44, 0x0

    .line 583
    .local v44, isStarred:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v10, "_id"

    aput-object v10, v7, v8

    const/4 v8, 0x1

    const-string v10, "starred"

    aput-object v10, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sourceid = \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v40

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ServerID:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\' "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    .line 589
    .local v49, rawContactCur:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v49 .. v49}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 590
    const-string v5, "_id"

    move-object/from16 v0, v49

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v49

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 591
    const-string v5, "starred"

    move-object/from16 v0, v49

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v49

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/16 v44, 0x1

    .line 594
    :cond_1
    :goto_1
    if-eqz v49, :cond_2

    invoke-interface/range {v49 .. v49}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 595
    invoke-interface/range {v49 .. v49}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_2
    if-nez v26, :cond_6

    .line 576
    :cond_3
    :goto_2
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_0

    .line 591
    :cond_4
    const/16 v44, 0x0

    goto :goto_1

    .line 594
    :catchall_0
    move-exception v5

    if-eqz v49, :cond_5

    invoke-interface/range {v49 .. v49}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 595
    invoke-interface/range {v49 .. v49}, Landroid/database/Cursor;->close()V

    .line 594
    :cond_5
    throw v5

    .line 604
    :cond_6
    sget-boolean v5, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "> updating contact #"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v10, v41, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 606
    :cond_7
    new-instance v48, Lcom/htc/android/mail/eassvc/contact/Contact;

    invoke-direct/range {v48 .. v48}, Lcom/htc/android/mail/eassvc/contact/Contact;-><init>()V

    .line 608
    .local v48, pimContact:Lcom/htc/android/mail/eassvc/contact/Contact;
    move-object/from16 v0, v48

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/contact/Contact;->setId(Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->populatePIMContact(Lcom/htc/android/mail/eassvc/common/EASContact;Lcom/htc/android/mail/eassvc/contact/Contact;)V

    .line 612
    const/16 v52, 0x0

    .line 615
    .local v52, updated:Z
    const/16 v38, 0x0

    .line 617
    .local v38, cursor:Landroid/database/Cursor;
    const/16 v5, 0x12

    :try_start_1
    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "raw_contact_id"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "mimetype"

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-string v6, "data1"

    aput-object v6, v7, v5

    const/4 v5, 0x4

    const-string v6, "data2"

    aput-object v6, v7, v5

    const/4 v5, 0x5

    const-string v6, "data3"

    aput-object v6, v7, v5

    const/4 v5, 0x6

    const-string v6, "data4"

    aput-object v6, v7, v5

    const/4 v5, 0x7

    const-string v6, "data5"

    aput-object v6, v7, v5

    const/16 v5, 0x8

    const-string v6, "data6"

    aput-object v6, v7, v5

    const/16 v5, 0x9

    const-string v6, "data7"

    aput-object v6, v7, v5

    const/16 v5, 0xa

    const-string v6, "data8"

    aput-object v6, v7, v5

    const/16 v5, 0xb

    const-string v6, "data9"

    aput-object v6, v7, v5

    const/16 v5, 0xc

    const-string v6, "data10"

    aput-object v6, v7, v5

    const/16 v5, 0xd

    const-string v6, "data11"

    aput-object v6, v7, v5

    const/16 v5, 0xe

    const-string v6, "data12"

    aput-object v6, v7, v5

    const/16 v5, 0xf

    const-string v6, "data13"

    aput-object v6, v7, v5

    const/16 v5, 0x10

    const-string v6, "data14"

    aput-object v6, v7, v5

    const/16 v5, 0x11

    const-string v6, "data15"

    aput-object v6, v7, v5

    .line 636
    .local v7, dataProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "raw_contact_id=?"

    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v26, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 641
    .end local v38           #cursor:Landroid/database/Cursor;
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v5, 0x1

    :try_start_2
    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/eassvc/contact/Contact;->getPeopleCV(Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 642
    .local v11, contentValue:Landroid/content/ContentValues;
    const-string v12, "vnd.android.cursor.item/name"

    const/4 v5, 0x7

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data1"

    aput-object v6, v13, v5

    const/4 v5, 0x1

    const-string v6, "data2"

    aput-object v6, v13, v5

    const/4 v5, 0x2

    const-string v6, "data3"

    aput-object v6, v13, v5

    const/4 v5, 0x3

    const-string v6, "data7"

    aput-object v6, v13, v5

    const/4 v5, 0x4

    const-string v6, "data9"

    aput-object v6, v13, v5

    const/4 v5, 0x5

    const-string v6, "data5"

    aput-object v6, v13, v5

    const/4 v5, 0x6

    const-string v6, "data6"

    aput-object v6, v13, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, v47

    invoke-virtual/range {v8 .. v16}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 644
    sget-boolean v5, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>> update contact:("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v48

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v48

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->firstName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v48

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 646
    :cond_8
    const/4 v5, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/eassvc/contact/Contact;->getAnniversaryCV(Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 647
    const-string v12, "vnd.android.cursor.item/contact_event"

    const-string v13, "data1"

    const-string v14, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v8, p0

    move-object/from16 v10, v47

    invoke-virtual/range {v8 .. v15}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/4 v5, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/eassvc/contact/Contact;->getBirthdayCV(Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 650
    const-string v12, "vnd.android.cursor.item/contact_event"

    const-string v13, "data1"

    const-string v14, "data2"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v8, p0

    move-object/from16 v10, v47

    invoke-virtual/range {v8 .. v15}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v5, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/eassvc/contact/Contact;->getNotesCV(Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 653
    const-string v12, "vnd.android.cursor.item/note"

    const-string v13, "data1"

    move-object/from16 v8, p0

    move-object/from16 v10, v47

    invoke-virtual/range {v8 .. v13}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v5, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/eassvc/contact/Contact;->getOrganizationCV(Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 656
    const-string v12, "vnd.android.cursor.item/organization"

    const/4 v5, 0x2

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data1"

    aput-object v6, v13, v5

    const/4 v5, 0x1

    const-string v6, "data4"

    aput-object v6, v13, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, v47

    invoke-virtual/range {v8 .. v16}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 658
    const/4 v5, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/eassvc/contact/Contact;->getPhotoCV(Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 659
    const-string v12, "vnd.android.cursor.item/photo"

    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data15"

    aput-object v6, v13, v5

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, v47

    invoke-virtual/range {v8 .. v16}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneHome:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getPhoneCV(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v15

    .line 663
    .local v15, listPhone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v17, "vnd.android.cursor.item/phone_v2"

    const-string v18, "data1"

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const-string v6, "data2"

    aput-object v6, v19, v5

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v20, v5

    move-object/from16 v12, p0

    move-object v13, v9

    move-object/from16 v14, v47

    move-object/from16 v16, v26

    invoke-virtual/range {v12 .. v20}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateDatasIgnoreThesame(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneWork:Ljava/util/ArrayList;

    const/4 v6, 0x3

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getPhoneCV(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v15

    .line 666
    const-string v17, "vnd.android.cursor.item/phone_v2"

    const-string v18, "data1"

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const-string v6, "data2"

    aput-object v6, v19, v5

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v20, v5

    move-object/from16 v12, p0

    move-object v13, v9

    move-object/from16 v14, v47

    move-object/from16 v16, v26

    invoke-virtual/range {v12 .. v20}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateDatasIgnoreThesame(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneMobile:Ljava/util/ArrayList;

    const/4 v6, 0x2

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getFirstPhoneCV(Ljava/util/ArrayList;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 670
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const-string v21, "data1"

    const-string v22, "data2"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->phonePager:Ljava/util/ArrayList;

    const/4 v6, 0x6

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getFirstPhoneCV(Ljava/util/ArrayList;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 673
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const-string v21, "data1"

    const-string v22, "data2"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneOther:Ljava/util/ArrayList;

    const/4 v6, 0x7

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getFirstPhoneCV(Ljava/util/ArrayList;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 676
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const-string v21, "data1"

    const-string v22, "data2"

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneHomeFax:Ljava/util/ArrayList;

    const/4 v6, 0x5

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getFirstPhoneCV(Ljava/util/ArrayList;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 680
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const-string v21, "data1"

    const-string v22, "data2"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->phoneWorkFax:Ljava/util/ArrayList;

    const/4 v6, 0x4

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getFirstPhoneCV(Ljava/util/ArrayList;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 683
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const-string v21, "data1"

    const-string v22, "data2"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->assistantTelephone:Ljava/lang/String;

    const/16 v6, 0x13

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getPhoneCV(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 686
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const-string v21, "data1"

    const-string v22, "data2"

    const/16 v5, 0x13

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->carTelephone:Ljava/lang/String;

    const/16 v6, 0x9

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getPhoneCV(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 689
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const-string v21, "data1"

    const-string v22, "data2"

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->companyMainPhone:Ljava/lang/String;

    const/16 v6, 0xa

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getPhoneCV(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 692
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const-string v21, "data1"

    const-string v22, "data2"

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact;->radioTelephone:Ljava/lang/String;

    const/16 v6, 0xe

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getPhoneCV(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 695
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const-string v21, "data1"

    const-string v22, "data2"

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    const-string v6, "data7"

    aput-object v6, v21, v5

    const/4 v5, 0x1

    const-string v6, "data4"

    aput-object v6, v21, v5

    const/4 v5, 0x2

    const-string v6, "data10"

    aput-object v6, v21, v5

    const/4 v5, 0x3

    const-string v6, "data9"

    aput-object v6, v21, v5

    const/4 v5, 0x4

    const-string v6, "data8"

    aput-object v6, v21, v5

    .line 699
    .local v21, addrCols:[Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getAddressCV(IZ)Landroid/content/ContentValues;

    move-result-object v11

    .line 700
    const-string v20, "vnd.android.cursor.item/postal-address_v2"

    const/16 v22, 0x0

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    const-string v6, "data2"

    aput-object v6, v23, v5

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v24, v5

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v24}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 703
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getAddressCV(IZ)Landroid/content/ContentValues;

    move-result-object v11

    .line 704
    const-string v20, "vnd.android.cursor.item/postal-address_v2"

    const/16 v22, 0x0

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    const-string v6, "data2"

    aput-object v6, v23, v5

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v24, v5

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v24}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 707
    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/eassvc/contact/Contact;->getAddressCV(IZ)Landroid/content/ContentValues;

    move-result-object v11

    .line 708
    const-string v20, "vnd.android.cursor.item/postal-address_v2"

    const/16 v22, 0x0

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    const-string v6, "data2"

    aput-object v6, v23, v5

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v24, v5

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v47

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v24}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {v48 .. v48}, Lcom/htc/android/mail/eassvc/contact/Contact;->getEmailCV()Ljava/util/ArrayList;

    move-result-object v25

    .line 714
    .local v25, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v27, "vnd.android.cursor.item/email_v2"

    const-string v28, "data1"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, v9

    move-object/from16 v24, v47

    invoke-virtual/range {v22 .. v30}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateDatasIgnoreThesame(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {v48 .. v48}, Lcom/htc/android/mail/eassvc/contact/Contact;->getIMCV()Ljava/util/ArrayList;

    move-result-object v25

    .line 718
    if-nez v25, :cond_a

    const/16 v30, 0x0

    :goto_3
    const-string v31, "vnd.android.cursor.item/im"

    const-string v32, "data1"

    move-object/from16 v27, p0

    move-object/from16 v28, v9

    move-object/from16 v29, v47

    invoke-virtual/range {v27 .. v32}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v5, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/eassvc/contact/Contact;->getUnsupportedCV(Z)Ljava/util/ArrayList;

    move-result-object v25

    .line 722
    const-string v27, "vnd.android.cursor.item/htceas_unsupport"

    move-object/from16 v22, p0

    move-object/from16 v23, v9

    move-object/from16 v24, v47

    invoke-virtual/range {v22 .. v27}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateDatasDeleteOld(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v47

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->addCategories(Lcom/htc/android/mail/eassvc/contact/Contact;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 726
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v44

    move-object/from16 v3, v46

    move-object/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateContactToCategory(Lcom/htc/android/mail/eassvc/contact/Contact;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 729
    const/4 v5, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/eassvc/contact/Contact;->getWebsiteCV(Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 730
    const-string v31, "vnd.android.cursor.item/website"

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/4 v5, 0x0

    const-string v6, "data1"

    aput-object v6, v32, v5

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v27, p0

    move-object/from16 v28, v9

    move-object/from16 v29, v47

    move-object/from16 v30, v11

    invoke-virtual/range {v27 .. v35}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 733
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_9

    .line 734
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 737
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "com.android.contacts"

    move-object/from16 v0, v47

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 738
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->clear()V

    .line 739
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 744
    sget-object v5, Lcom/htc/android/mail/eassvc/contact/ContactManager;->tackingUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    .line 745
    .local v36, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(serverId IN (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ServerID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "))"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 746
    .local v51, trackingWhere:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND accountName=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v10, v6, v8

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 747
    const-string v5, "_modify"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 748
    invoke-virtual/range {v36 .. v36}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "com.android.contacts"

    move-object/from16 v0, v47

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 757
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->clear()V

    .line 760
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 761
    .local v42, idMap:[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object v26, v42, v5

    .line 762
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v42, v5

    .line 763
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    move-object/from16 v0, v50

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    sget-boolean v5, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "< updating contact #"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v10, v41, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 718
    .end local v36           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v42           #idMap:[Ljava/lang/String;
    .end local v51           #trackingWhere:Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    :try_start_4
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v30, v5

    goto/16 :goto_3

    .line 733
    .end local v7           #dataProjection:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #contentValue:Landroid/content/ContentValues;
    .end local v15           #listPhone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v21           #addrCols:[Ljava/lang/String;
    .end local v25           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v38       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    move-object/from16 v9, v38

    .end local v38           #cursor:Landroid/database/Cursor;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :goto_4
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_b

    .line 734
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_b
    throw v5

    .line 752
    .restart local v7       #dataProjection:[Ljava/lang/String;
    .restart local v11       #contentValue:Landroid/content/ContentValues;
    .restart local v15       #listPhone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v21       #addrCols:[Ljava/lang/String;
    .restart local v25       #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v36       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v51       #trackingWhere:Ljava/lang/String;
    :catch_0
    move-exception v39

    .line 753
    .local v39, e:Ljava/lang/Exception;
    const-string v5, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v8, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 754
    new-instance v5, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v6, 0x320

    const-string v8, "update local _modify error for server side change"

    invoke-direct {v5, v6, v8}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 770
    .end local v7           #dataProjection:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #contentValue:Landroid/content/ContentValues;
    .end local v15           #listPhone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v21           #addrCols:[Ljava/lang/String;
    .end local v25           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v26           #contactLocalID:Ljava/lang/String;
    .end local v36           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v39           #e:Ljava/lang/Exception;
    .end local v40           #easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    .end local v44           #isStarred:Z
    .end local v48           #pimContact:Lcom/htc/android/mail/eassvc/contact/Contact;
    .end local v49           #rawContactCur:Landroid/database/Cursor;
    .end local v51           #trackingWhere:Ljava/lang/String;
    .end local v52           #updated:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v5, :cond_d

    .line 771
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v5, v0, v6}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->updateRecord(Ljava/util/ArrayList;Z)V

    .line 775
    :cond_d
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 776
    new-instance v37, Landroid/content/Intent;

    const-string v5, "anddroid.intent.action.FAVORITE_CHANGE"

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v37, contacts:Landroid/content/Intent;
    const-string v5, "EAS_CONTACT_SVR_UPD_LIST"

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 778
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/htc/android/mail/eassvc/contact/ContactManager$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v50

    invoke-direct {v6, v0, v1, v2}, Lcom/htc/android/mail/eassvc/contact/ContactManager$2;-><init>(Lcom/htc/android/mail/eassvc/contact/ContactManager;Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 785
    .end local v37           #contacts:Landroid/content/Intent;
    :cond_e
    return-void

    .line 733
    .restart local v7       #dataProjection:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v26       #contactLocalID:Ljava/lang/String;
    .restart local v40       #easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    .restart local v44       #isStarred:Z
    .restart local v48       #pimContact:Lcom/htc/android/mail/eassvc/contact/Contact;
    .restart local v49       #rawContactCur:Landroid/database/Cursor;
    .restart local v52       #updated:Z
    :catchall_2
    move-exception v5

    goto :goto_4
.end method

.method private updateGroupChange()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v14, 0x0

    .line 1823
    const/4 v9, 0x0

    .line 1824
    .local v9, groupsChange:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1825
    .local v12, rawContactChange:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v14

    const-string v3, "account_type=? AND (dirty=1 OR deleted=1)"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v13, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    aput-object v13, v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1830
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1832
    :cond_0
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1833
    .local v10, id:Ljava/lang/String;
    if-nez v9, :cond_a

    .line 1834
    move-object v9, v10

    .line 1838
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    .end local v10           #id:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 1841
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1843
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "EAS_CONMGR"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroupChange(): find change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1845
    :cond_3
    if-eqz v9, :cond_8

    .line 1846
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype = ? AND data1 IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "vnd.android.cursor.item/group_membership"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1852
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1854
    :cond_4
    const-string v0, "raw_contact_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1855
    .restart local v10       #id:Ljava/lang/String;
    if-nez v12, :cond_b

    .line 1856
    move-object v12, v10

    .line 1860
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1862
    .end local v10           #id:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 1863
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1867
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .local v11, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz v12, :cond_7

    .line 1870
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1871
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v0, "dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1873
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1876
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1877
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v0, "account_type=? AND deleted=1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1879
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1881
    const-string v0, "dirty"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1882
    const-string v0, "account_type=? AND dirty=1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1884
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1886
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1893
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_8
    :goto_2
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1894
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1896
    :cond_9
    return-void

    .line 1836
    .restart local v10       #id:Ljava/lang/String;
    :cond_a
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1858
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 1887
    .end local v10           #id:Ljava/lang/String;
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v8

    .line 1888
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "EAS_CONMGR"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroupChange(): Error-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1889
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1893
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1894
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1893
    :cond_c
    throw v0
.end method


# virtual methods
.method public addContact(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/contact/Contact;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .parameter "pimContact"
    .parameter "serverId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/htc/android/mail/eassvc/contact/Contact;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, newCates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 239
    .local v4, rawContactOpIndex:I
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 240
    .local v7, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "caller_is_syncadapter"

    const-string v1, "true"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 241
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 244
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 246
    const-string v0, "account_type"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 248
    :cond_0
    if-eqz p3, :cond_1

    .line 249
    const-string v0, "sourceid"

    invoke-virtual {v6, v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 251
    :cond_1
    const-string v0, "sync1"

    const-string v1, "1000"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 252
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 255
    const-string v0, "caller_is_syncadapter"

    const-string v1, "true"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 256
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 257
    const-string v0, "raw_contact_id"

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 258
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 259
    const-string v0, "data1"

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 260
    const-string v0, "data2"

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->firstName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 261
    const-string v0, "data3"

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 263
    const-string v0, "data5"

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->middleName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 264
    const-string v0, "data6"

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->suffix:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 265
    const-string v0, "data7"

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->yomiFirstname:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 266
    const-string v0, "data9"

    iget-object v1, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->yomiLastname:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 267
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "EAS_CONMGR"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> add contact:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->middleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/htc/android/mail/eassvc/contact/Contact;->category:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 271
    invoke-direct {p0, p2, p1, p4}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->addCategories(Lcom/htc/android/mail/eassvc/contact/Contact;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 272
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->insertContactToCategoty(Lcom/htc/android/mail/eassvc/contact/Contact;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 275
    :cond_3
    invoke-virtual {p2, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addNoteOperation(Ljava/util/ArrayList;I)V

    .line 277
    invoke-virtual {p2, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhotoOperation(Ljava/util/ArrayList;I)V

    .line 279
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addEventOperation(ILjava/util/ArrayList;I)V

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addEventOperation(ILjava/util/ArrayList;I)V

    .line 282
    invoke-virtual {p2, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addOrganizationOperation(Ljava/util/ArrayList;I)V

    .line 284
    invoke-virtual {p2, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addIMOpertation(Ljava/util/ArrayList;I)V

    .line 286
    invoke-virtual {p2, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addEMailOperation(Ljava/util/ArrayList;I)V

    .line 288
    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhonesOperation(ILjava/util/ArrayList;I)V

    .line 289
    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhonesOperation(ILjava/util/ArrayList;I)V

    .line 290
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhonesOperation(ILjava/util/ArrayList;I)V

    .line 291
    const/4 v0, 0x7

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhonesOperation(ILjava/util/ArrayList;I)V

    .line 292
    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhonesOperation(ILjava/util/ArrayList;I)V

    .line 293
    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhonesOperation(ILjava/util/ArrayList;I)V

    .line 294
    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhonesOperation(ILjava/util/ArrayList;I)V

    .line 297
    const/16 v0, 0x13

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhoneOperation(ILjava/util/ArrayList;I)V

    .line 298
    const/16 v0, 0x9

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhoneOperation(ILjava/util/ArrayList;I)V

    .line 299
    const/16 v0, 0xa

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhoneOperation(ILjava/util/ArrayList;I)V

    .line 300
    const/16 v0, 0xe

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPhoneOperation(ILjava/util/ArrayList;I)V

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPostalOperation(ILjava/util/ArrayList;I)V

    .line 303
    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPostalOperation(ILjava/util/ArrayList;I)V

    .line 304
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addPostalOperation(ILjava/util/ArrayList;I)V

    .line 307
    invoke-virtual {p2, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addWebOperation(Ljava/util/ArrayList;I)V

    .line 308
    invoke-virtual {p2, p1, v4}, Lcom/htc/android/mail/eassvc/contact/Contact;->addUnsupportedOperation(Ljava/util/ArrayList;I)V

    .line 311
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 312
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "_syncing"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    if-eqz p3, :cond_4

    .line 315
    const-string v0, "serverId"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_4
    sget-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->tackingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 317
    const-string v0, "_id=? "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 318
    const/4 v0, 0x0

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 319
    invoke-virtual {v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 320
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method appendCondition([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "keys"
    .parameter "values"

    .prologue
    const/4 v0, 0x0

    .line 913
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 914
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_1

    .line 927
    :cond_0
    return-object v0

    .line 917
    :cond_1
    const/4 v0, 0x0

    .line 918
    .local v0, condition:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 919
    if-nez v0, :cond_2

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method checkCondition(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .parameter "cursor"
    .parameter "keys"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 898
    const/4 v0, 0x1

    .line 899
    .local v0, checkOk:Z
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 900
    array-length v4, p2

    array-length v5, p3

    if-eq v4, v5, :cond_1

    .line 910
    :cond_0
    :goto_0
    return v3

    .line 903
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 904
    aget-object v4, p2, v1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, value:Ljava/lang/String;
    aget-object v4, p3, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 910
    .end local v1           #i:I
    .end local v2           #value:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public cleanSyncFailRecord()V
    .locals 7

    .prologue
    .line 1983
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->cleanSyncFailRecord()Ljava/lang/String;

    move-result-object v0

    .line 1984
    .local v0, ids:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1992
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1987
    .local v1, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1989
    .local v2, whereClause:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1990
    sget-boolean v3, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "EAS_CONMGR"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clear existed contact on device :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0
.end method

.method findKey(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 418
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 425
    :goto_0
    return-object v2

    .line 420
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 421
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object v2, v3

    .line 425
    goto :goto_0
.end method

.method getCategories()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v7, currentCategories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    const/4 v8, 0x0

    .line 388
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "account_name=? AND account_type=?"

    .line 389
    .local v3, categoryWhere:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v12, v4, v5

    const/4 v5, 0x1

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 394
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 397
    .local v9, id:I
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 398
    .local v11, name:Ljava/lang/String;
    sget-object v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->GROUP_MAPPING:Ljava/util/Hashtable;

    invoke-virtual {v0, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 399
    .local v10, mapping:Ljava/lang/String;
    new-instance v6, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    invoke-direct {v6}, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;-><init>()V

    .line 400
    .local v6, catItem:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    iput v9, v6, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->id:I

    .line 401
    if-eqz v10, :cond_3

    .line 402
    iput-object v10, v6, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    .line 406
    :goto_0
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 410
    .end local v6           #catItem:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    .end local v9           #id:I
    .end local v10           #mapping:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 411
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_2
    return-object v7

    .line 404
    .restart local v6       #catItem:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    .restart local v9       #id:I
    .restart local v10       #mapping:Ljava/lang/String;
    .restart local v11       #name:Ljava/lang/String;
    :cond_3
    :try_start_1
    iput-object v11, v6, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 410
    .end local v3           #categoryWhere:Ljava/lang/String;
    .end local v6           #catItem:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    .end local v9           #id:I
    .end local v10           #mapping:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 411
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_4
    throw v0
.end method

.method public getCollIdFromDB()Ljava/lang/String;
    .locals 9

    .prologue
    .line 2039
    const/4 v6, 0x0

    .line 2040
    .local v6, CollId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2042
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CollID"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2044
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    const-string v0, "CollID"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2051
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2052
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2055
    :cond_1
    return-object v6

    .line 2047
    :catch_0
    move-exception v8

    .line 2048
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2049
    const/4 v6, 0x0

    .line 2051
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2052
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2051
    :cond_2
    throw v0
.end method

.method public getDeviceChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter "conversationError"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p2, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p3, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateGroupChange()V

    .line 1813
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-nez v0, :cond_0

    .line 1814
    const/4 v0, 0x0

    .line 1818
    :goto_0
    return v0

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getDeviceContactChangeList(Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASContactPopulate;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1818
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->init()V

    .line 1415
    :cond_0
    return-void
.end method

.method public populate([I)Ljava/util/ArrayList;
    .locals 59
    .parameter "persons"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1496
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .local v23, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .local v49, starredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v44, 0x0

    .line 1500
    .local v44, personsStr:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1501
    const/16 v23, 0x0

    .line 1797
    .end local v23           #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    :cond_0
    :goto_0
    return-object v23

    .line 1503
    .restart local v23       #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    :cond_1
    move-object/from16 v16, p1

    .local v16, arr$:[I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v35, v0

    .local v35, len$:I
    const/16 v31, 0x0

    .local v31, i$:I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_3

    aget v43, v16, v31

    .line 1504
    .local v43, personId:I
    if-nez v44, :cond_2

    .line 1505
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    .line 1503
    :goto_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 1507
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    goto :goto_2

    .line 1511
    .end local v43           #personId:I
    :cond_3
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "starred"

    aput-object v4, v5, v3

    .line 1514
    .local v5, peopleProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 1520
    .local v42, peopleCur:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 1521
    if-eqz v42, :cond_f

    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1523
    :cond_4
    new-instance v22, Lcom/htc/android/mail/eassvc/common/EASContact;

    invoke-direct/range {v22 .. v22}, Lcom/htc/android/mail/eassvc/common/EASContact;-><init>()V

    .line 1524
    .local v22, contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    const-string v3, "_id"

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1525
    .local v26, curID:I
    const-string v3, "starred"

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_e

    const/16 v48, 0x1

    .line 1526
    .local v48, starred:Z
    :goto_3
    if-eqz v48, :cond_5

    .line 1527
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    :cond_5
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ClientId:Ljava/lang/String;

    .line 1530
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 1535
    if-eqz v42, :cond_6

    .line 1536
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 1539
    :cond_6
    const/16 v28, 0x0

    .line 1540
    .local v28, dataCur:Landroid/database/Cursor;
    new-instance v20, Ljava/util/Hashtable;

    invoke-direct/range {v20 .. v20}, Ljava/util/Hashtable;-><init>()V

    .line 1541
    .local v20, categoryMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/16 v3, 0x11

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    const-string v4, "mimetype"

    aput-object v4, v8, v3

    const/4 v3, 0x2

    const-string v4, "data1"

    aput-object v4, v8, v3

    const/4 v3, 0x3

    const-string v4, "data2"

    aput-object v4, v8, v3

    const/4 v3, 0x4

    const-string v4, "data3"

    aput-object v4, v8, v3

    const/4 v3, 0x5

    const-string v4, "data4"

    aput-object v4, v8, v3

    const/4 v3, 0x6

    const-string v4, "data5"

    aput-object v4, v8, v3

    const/4 v3, 0x7

    const-string v4, "data6"

    aput-object v4, v8, v3

    const/16 v3, 0x8

    const-string v4, "data7"

    aput-object v4, v8, v3

    const/16 v3, 0x9

    const-string v4, "data8"

    aput-object v4, v8, v3

    const/16 v3, 0xa

    const-string v4, "data9"

    aput-object v4, v8, v3

    const/16 v3, 0xb

    const-string v4, "data10"

    aput-object v4, v8, v3

    const/16 v3, 0xc

    const-string v4, "data11"

    aput-object v4, v8, v3

    const/16 v3, 0xd

    const-string v4, "data12"

    aput-object v4, v8, v3

    const/16 v3, 0xe

    const-string v4, "data13"

    aput-object v4, v8, v3

    const/16 v3, 0xf

    const-string v4, "data14"

    aput-object v4, v8, v3

    const/16 v3, 0x10

    const-string v4, "data15"

    aput-object v4, v8, v3

    .line 1559
    .local v8, dataProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1565
    if-eqz v28, :cond_2d

    :try_start_1
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1567
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 1568
    const-string v3, "raw_contact_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 1569
    .local v43, personId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->findContact(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASContact;

    move-result-object v22

    .line 1570
    if-nez v22, :cond_11

    .line 1772
    :cond_8
    :goto_4
    :pswitch_0
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_7

    .line 1776
    if-eqz v28, :cond_9

    .line 1777
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1781
    :cond_9
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .end local v22           #contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    check-cast v22, Lcom/htc/android/mail/eassvc/common/EASContact;

    .line 1783
    .restart local v22       #contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->MobileTelephoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->MobileTelephoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1785
    :cond_a
    const-string v4, "EAS_CONMGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "populate("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ClientId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->FileAs:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " no mobile data. length="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->MobileTelephoneNumber:Ljava/lang/String;

    if-nez v3, :cond_2e

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    :cond_b
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ClientId:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 1788
    .local v19, categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v19, :cond_c

    .line 1789
    new-instance v19, Ljava/util/ArrayList;

    .end local v19           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1791
    .restart local v19       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ClientId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1792
    const-string v3, "HTC Favorite"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    :cond_d
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Category:[Ljava/lang/String;

    goto/16 :goto_5

    .line 1525
    .end local v8           #dataProjection:[Ljava/lang/String;
    .end local v19           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20           #categoryMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v28           #dataCur:Landroid/database/Cursor;
    .end local v43           #personId:Ljava/lang/String;
    .end local v48           #starred:Z
    .local v31, i$:I
    :cond_e
    const/16 v48, 0x0

    goto/16 :goto_3

    .line 1533
    .end local v22           #contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    .end local v26           #curID:I
    :cond_f
    const/16 v23, 0x0

    .line 1535
    .end local v23           #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    if-eqz v42, :cond_0

    .line 1536
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1535
    .restart local v23       #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    :catchall_0
    move-exception v3

    if-eqz v42, :cond_10

    .line 1536
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 1535
    :cond_10
    throw v3

    .line 1572
    .restart local v8       #dataProjection:[Ljava/lang/String;
    .restart local v20       #categoryMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v22       #contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    .restart local v26       #curID:I
    .restart local v28       #dataCur:Landroid/database/Cursor;
    .restart local v43       #personId:Ljava/lang/String;
    .restart local v48       #starred:Z
    :cond_11
    :try_start_2
    const-string v3, "mimetype"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1574
    .local v39, mimetype:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1575
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 1576
    .local v40, name:Ljava/lang/String;
    const-string v3, "data2"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1577
    .local v29, firstname:Ljava/lang/String;
    const-string v3, "data3"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1578
    .local v34, lastname:Ljava/lang/String;
    const-string v3, "data7"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 1579
    .local v56, yomiFirstname:Ljava/lang/String;
    const-string v3, "data9"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1580
    .local v57, yomiLastname:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->FirstName:Ljava/lang/String;

    .line 1581
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->LastName:Ljava/lang/String;

    .line 1582
    move-object/from16 v0, v56

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->YomiFirstName:Ljava/lang/String;

    .line 1583
    move-object/from16 v0, v57

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->YomiLastName:Ljava/lang/String;

    .line 1584
    move-object/from16 v0, v40

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->FileAs:Ljava/lang/String;

    .line 1586
    const-string v3, "data5"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1587
    .local v37, middlename:Ljava/lang/String;
    const-string v3, "data6"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 1588
    .local v52, suffix:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->MiddleName:Ljava/lang/String;

    .line 1589
    move-object/from16 v0, v52

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->Suffix:Ljava/lang/String;

    .line 1590
    sget-boolean v3, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "populate("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") DFL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_4

    .line 1776
    .end local v29           #firstname:Ljava/lang/String;
    .end local v34           #lastname:Ljava/lang/String;
    .end local v37           #middlename:Ljava/lang/String;
    .end local v39           #mimetype:Ljava/lang/String;
    .end local v40           #name:Ljava/lang/String;
    .end local v43           #personId:Ljava/lang/String;
    .end local v52           #suffix:Ljava/lang/String;
    .end local v56           #yomiFirstname:Ljava/lang/String;
    .end local v57           #yomiLastname:Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v28, :cond_12

    .line 1777
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1776
    :cond_12
    throw v3

    .line 1591
    .restart local v39       #mimetype:Ljava/lang/String;
    .restart local v43       #personId:Ljava/lang/String;
    :cond_13
    :try_start_3
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1592
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1594
    .local v41, notes:Ljava/lang/String;
    if-eqz v41, :cond_8

    .line 1595
    move-object/from16 v0, v41

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->Body:Ljava/lang/String;

    goto/16 :goto_4

    .line 1596
    .end local v41           #notes:Ljava/lang/String;
    :cond_14
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1597
    const-string v3, "data15"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v47

    .line 1598
    .local v47, photo:[B
    if-eqz v47, :cond_8

    .line 1599
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v47

    invoke-static {v0, v4}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Picture:Ljava/lang/String;

    goto/16 :goto_4

    .line 1600
    .end local v47           #photo:[B
    :cond_15
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1601
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->CompanyName:Ljava/lang/String;

    .line 1602
    const-string v3, "data4"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->JobTitle:Ljava/lang/String;

    goto/16 :goto_4

    .line 1603
    :cond_16
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1604
    const-string v3, "data2"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 1605
    .local v46, phoneType:I
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1607
    .local v45, phoneNum:Ljava/lang/String;
    if-lez v46, :cond_8

    if-eqz v45, :cond_8

    .line 1608
    packed-switch v46, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_4

    .line 1610
    :pswitch_2
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeTelephoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1611
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeTelephoneNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1612
    :cond_17
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Home2TelephoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1613
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->Home2TelephoneNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1616
    :pswitch_3
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->MobileTelephoneNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1619
    :pswitch_4
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessTelephoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1620
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessTelephoneNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1621
    :cond_18
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Business2TelephoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1622
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->Business2TelephoneNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1625
    :pswitch_5
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessFaxNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1628
    :pswitch_6
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeFaxNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1631
    :pswitch_7
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->PagerNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1636
    :pswitch_8
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->RadioTelephoneNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1639
    :pswitch_9
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->CarTelephoneNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1642
    :pswitch_a
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->CompanyMainPhone:Ljava/lang/String;

    goto/16 :goto_4

    .line 1645
    :pswitch_b
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->AssistantTelephoneNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1652
    .end local v45           #phoneNum:Ljava/lang/String;
    .end local v46           #phoneType:I
    :cond_19
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1653
    const-string v3, "data2"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    .line 1654
    .local v54, type:I
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1656
    .local v27, data:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Email1Address:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 1657
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->Email1Address:Ljava/lang/String;

    goto/16 :goto_4

    .line 1658
    :cond_1a
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Email2Address:Ljava/lang/String;

    if-nez v3, :cond_1b

    .line 1659
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->Email2Address:Ljava/lang/String;

    goto/16 :goto_4

    .line 1660
    :cond_1b
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Email3Address:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 1661
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->Email3Address:Ljava/lang/String;

    goto/16 :goto_4

    .line 1663
    .end local v27           #data:Ljava/lang/String;
    .end local v54           #type:I
    :cond_1c
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1664
    const-string v3, "data2"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    .line 1665
    .restart local v54       #type:I
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1666
    .restart local v27       #data:Ljava/lang/String;
    const-string v3, "data4"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 1667
    .local v51, street:Ljava/lang/String;
    const-string v3, "data7"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1668
    .local v21, city:Ljava/lang/String;
    const-string v3, "data8"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 1669
    .local v50, state:Ljava/lang/String;
    const-string v3, "data9"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 1670
    .local v58, zip:Ljava/lang/String;
    const-string v3, "data10"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1672
    .local v24, country:Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, v54

    if-ne v0, v3, :cond_1d

    .line 1674
    move-object/from16 v0, v51

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressStreet:Ljava/lang/String;

    .line 1675
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressCity:Ljava/lang/String;

    .line 1676
    move-object/from16 v0, v50

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressState:Ljava/lang/String;

    .line 1677
    move-object/from16 v0, v58

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressPostalCode:Ljava/lang/String;

    .line 1678
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->HomeAddressCountry:Ljava/lang/String;

    .line 1679
    sget-boolean v3, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1680
    :cond_1d
    const/4 v3, 0x2

    move/from16 v0, v54

    if-ne v0, v3, :cond_1e

    .line 1682
    move-object/from16 v0, v51

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressStreet:Ljava/lang/String;

    .line 1683
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressCity:Ljava/lang/String;

    .line 1684
    move-object/from16 v0, v50

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressState:Ljava/lang/String;

    .line 1685
    move-object/from16 v0, v58

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressPostalCode:Ljava/lang/String;

    .line 1686
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->BusinessAddressCountry:Ljava/lang/String;

    .line 1687
    sget-boolean v3, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1688
    :cond_1e
    const/4 v3, 0x3

    move/from16 v0, v54

    if-ne v0, v3, :cond_8

    .line 1690
    move-object/from16 v0, v51

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressStreet:Ljava/lang/String;

    .line 1691
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressCity:Ljava/lang/String;

    .line 1692
    move-object/from16 v0, v50

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressState:Ljava/lang/String;

    .line 1693
    move-object/from16 v0, v58

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressPostalCode:Ljava/lang/String;

    .line 1694
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->OtherAddressCountry:Ljava/lang/String;

    .line 1695
    sget-boolean v3, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1697
    .end local v21           #city:Ljava/lang/String;
    .end local v24           #country:Ljava/lang/String;
    .end local v27           #data:Ljava/lang/String;
    .end local v50           #state:Ljava/lang/String;
    .end local v51           #street:Ljava/lang/String;
    .end local v54           #type:I
    .end local v58           #zip:Ljava/lang/String;
    :cond_1f
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1698
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1700
    .restart local v27       #data:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1701
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddr:Ljava/lang/String;

    goto/16 :goto_4

    .line 1702
    :cond_20
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddress2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1703
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddress2:Ljava/lang/String;

    goto/16 :goto_4

    .line 1704
    :cond_21
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddress3:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1705
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASContact;->IMAddress3:Ljava/lang/String;

    goto/16 :goto_4

    .line 1706
    .end local v27           #data:Ljava/lang/String;
    :cond_22
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1707
    const/16 v18, 0x0

    .line 1708
    .local v18, category:Ljava/lang/String;
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1709
    .local v30, group_id:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1711
    .local v10, uriGroup:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1712
    .local v25, curGroups:Landroid/database/Cursor;
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1713
    const-string v3, "title"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1715
    :cond_23
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1717
    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 1718
    .restart local v19       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v19, :cond_24

    .line 1719
    new-instance v19, Ljava/util/ArrayList;

    .end local v19           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1720
    .restart local v19       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    :cond_24
    const-string v3, "Starred in Android "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1723
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1724
    .local v17, cate:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1725
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1728
    .end local v17           #cate:Ljava/lang/String;
    :cond_25
    sget-object v3, Lcom/htc/android/mail/eassvc/contact/ContactManager;->GROUP_MAPPING:Ljava/util/Hashtable;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 1729
    .local v36, mapping:Ljava/lang/String;
    if-eqz v36, :cond_26

    .line 1730
    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1731
    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1734
    :cond_26
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1735
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1739
    .end local v10           #uriGroup:Landroid/net/Uri;
    .end local v18           #category:Ljava/lang/String;
    .end local v19           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25           #curGroups:Landroid/database/Cursor;
    .end local v30           #group_id:Ljava/lang/String;
    .end local v36           #mapping:Ljava/lang/String;
    :cond_27
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1740
    const-string v3, "data2"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    .line 1741
    .restart local v54       #type:I
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 1742
    .local v55, value:Ljava/lang/String;
    const-string v3, "data12"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1743
    .local v38, mill:Ljava/lang/String;
    new-instance v53, Landroid/text/format/Time;

    invoke-direct/range {v53 .. v53}, Landroid/text/format/Time;-><init>()V

    .line 1745
    .local v53, time:Landroid/text/format/Time;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1746
    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 1750
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, v53

    iput-boolean v3, v0, Landroid/text/format/Time;->allDay:Z

    .line 1751
    const-string v3, "UTC"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1752
    const/4 v3, 0x1

    move/from16 v0, v54

    if-ne v0, v3, :cond_29

    .line 1753
    const/4 v3, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Anniversary:Ljava/lang/String;

    goto/16 :goto_4

    .line 1748
    :cond_28
    invoke-static/range {v38 .. v38}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto :goto_7

    .line 1754
    :cond_29
    const/4 v3, 0x3

    move/from16 v0, v54

    if-ne v0, v3, :cond_8

    .line 1755
    const/4 v3, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Birthday:Ljava/lang/String;

    goto/16 :goto_4

    .line 1757
    .end local v38           #mill:Ljava/lang/String;
    .end local v53           #time:Landroid/text/format/Time;
    .end local v54           #type:I
    .end local v55           #value:Ljava/lang/String;
    :cond_2a
    const-string v3, "vnd.android.cursor.item/website"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1759
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1760
    .local v15, Webpage:Ljava/lang/String;
    move-object/from16 v0, v22

    iput-object v15, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->Webpage:Ljava/lang/String;

    goto/16 :goto_4

    .line 1761
    .end local v15           #Webpage:Ljava/lang/String;
    :cond_2b
    const-string v3, "vnd.android.cursor.item/htceas_unsupport"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1762
    const/16 v33, 0x0

    .local v33, k:I
    :goto_8
    sget-object v3, Lcom/htc/android/mail/eassvc/contact/ContactManager;->UNSUPPORT_COLUMN:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v33

    if-ge v0, v3, :cond_8

    .line 1763
    sget-object v3, Lcom/htc/android/mail/eassvc/contact/ContactManager;->UNSUPPORT_COLUMN:[Ljava/lang/String;

    aget-object v3, v3, v33

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1764
    .restart local v27       #data:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1765
    const-string v3, "="

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    .line 1766
    .local v32, idx:I
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    .line 1767
    .restart local v40       #name:Ljava/lang/String;
    add-int/lit8 v3, v32, 0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v55

    .line 1768
    .restart local v55       #value:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->UnsupportedList:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;

    move-object/from16 v0, v40

    move-object/from16 v1, v55

    invoke-direct {v4, v0, v1}, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1762
    .end local v32           #idx:I
    .end local v40           #name:Ljava/lang/String;
    .end local v55           #value:Ljava/lang/String;
    :cond_2c
    add-int/lit8 v33, v33, 0x1

    goto :goto_8

    .line 1774
    .end local v27           #data:Ljava/lang/String;
    .end local v33           #k:I
    .end local v39           #mimetype:Ljava/lang/String;
    .end local v43           #personId:Ljava/lang/String;
    :cond_2d
    const/16 v23, 0x0

    .line 1776
    .end local v23           #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    if-eqz v28, :cond_0

    .line 1777
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1785
    .restart local v23       #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local v31, i$:Ljava/util/Iterator;
    .restart local v43       #personId:Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->MobileTelephoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto/16 :goto_6

    .line 1608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method public processClientAddRespList(Ljava/util/ArrayList;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 172
    .local v9, listSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_4

    .line 174
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/eassvc/common/EASContact;

    .line 175
    .local v7, easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    const/4 v13, 0x0

    .line 177
    .local v13, rawContactID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/htc/android/mail/eassvc/common/EASContact;->ClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 183
    .local v12, rawContactCur:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 188
    :cond_0
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_1
    if-nez v13, :cond_3

    .line 172
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_2
    throw v0

    .line 197
    :cond_3
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 198
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v6, v13}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 200
    const/4 v10, 0x0

    .line 201
    .local v10, operBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 202
    const-string v0, "sourceid"

    iget-object v1, v7, Lcom/htc/android/mail/eassvc/common/EASContact;->ServerID:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 204
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v11, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 209
    const/4 v6, 0x0

    .line 210
    const/4 v10, 0x0

    .line 211
    goto :goto_1

    .line 214
    .end local v6           #builder:Landroid/net/Uri$Builder;
    .end local v7           #easContact:Lcom/htc/android/mail/eassvc/common/EASContact;
    .end local v10           #operBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v12           #rawContactCur:Landroid/database/Cursor;
    .end local v13           #rawContactID:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public processServerChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p2, updObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    .local p3, delObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->addContacts(Ljava/util/ArrayList;)V

    .line 156
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v0}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 158
    invoke-direct {p0, p2}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateContacts(Ljava/util/ArrayList;)V

    .line 160
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v0}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 162
    invoke-direct {p0, p3}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->deleteContacts(Ljava/util/ArrayList;)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->release()V

    .line 1420
    :cond_0
    return-void
.end method

.method public removeAllSyncPeople(Z)V
    .locals 2
    .parameter "removeLocal"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->removeAllSyncPeople(Landroid/content/ContentResolver;Ljava/lang/String;Z)I

    .line 1431
    return-void
.end method

.method public removeSyncinfo(Ljava/lang/String;)V
    .locals 1
    .parameter "accountName"

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->removeSyncinfo(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1424
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->reset()V

    .line 1410
    :cond_0
    return-void
.end method

.method public setAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 147
    return-void
.end method

.method public skipIncorrectContact(Ljava/lang/String;)Z
    .locals 7
    .parameter "clientId"

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v3

    .line 222
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "_add"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v4, "_delete"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v4, "_modify"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v4, "_syncing"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, where:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v2, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 229
    .local v0, count:I
    if-lez v0, :cond_0

    .line 230
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public updateClientServerId(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASContact;>;"
    const/4 v6, 0x0

    .line 1968
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    .local v3, idMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v4, :cond_1

    .line 1970
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASContact;

    .line 1972
    .local v0, contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .line 1973
    .local v2, idMap:[Ljava/lang/String;
    iget-object v4, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ClientId:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 1974
    const/4 v4, 0x1

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASContact;->ServerID:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 1975
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1977
    .end local v0           #contact:Lcom/htc/android/mail/eassvc/common/EASContact;
    .end local v2           #idMap:[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v4, v3, v6}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->updateRecord(Ljava/util/ArrayList;Z)V

    .line 1980
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method updateDatasDeleteOld(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "cursor"
    .parameter
    .parameter
    .parameter "personId"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1008
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, updateCVs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 1009
    .local v3, uriBuilder:Landroid/net/Uri$Builder;
    const-string v4, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1010
    const/4 v2, 0x0

    .line 1011
    .local v2, operBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1012
    if-eqz p3, :cond_1

    .line 1013
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1014
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1015
    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1016
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1020
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1021
    const-string v4, "mimetype=? AND raw_contact_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p5, v5, v6

    const/4 v6, 0x1

    aput-object p4, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1023
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    if-eqz p3, :cond_1

    .line 1025
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1026
    .restart local v0       #cv:Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1027
    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1028
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1032
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method updateDatasIgnoreThesame(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 19
    .parameter "cursor"
    .parameter
    .parameter
    .parameter "personId"
    .parameter "mimeType"
    .parameter "dataCol"
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 932
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, updateCVs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v11, 0x0

    .line 933
    .local v11, operBuilder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 934
    .local v13, uriBuilder:Landroid/net/Uri$Builder;
    const-string v15, "caller_is_syncadapter"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 935
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-nez v15, :cond_0

    .line 936
    if-eqz p3, :cond_f

    .line 937
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 938
    .local v6, cv:Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 939
    invoke-virtual {v11, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 940
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 944
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v12, 0x1

    .line 945
    .local v12, theSame:Z
    const/4 v8, 0x0

    .line 946
    .local v8, foundInDb:Z
    const/4 v5, 0x0

    .line 948
    .local v5, count:I
    :cond_1
    const-string v15, "mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 949
    .local v10, mime:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 950
    .local v7, data:Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 951
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkCondition(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 972
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-nez v15, :cond_1

    .line 973
    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eq v5, v15, :cond_4

    .line 974
    sget-boolean v15, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v15, :cond_3

    const-string v15, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDatasIgnoreThesame("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "): server have more data than device."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 975
    :cond_3
    const/4 v12, 0x0

    .line 977
    :cond_4
    if-nez v8, :cond_d

    .line 978
    sget-boolean v15, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v15, :cond_5

    const-string v15, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDatasIgnoreThesame("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "): server insert new mimetype to device."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 979
    :cond_5
    if-eqz p3, :cond_f

    .line 980
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 981
    .restart local v6       #cv:Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 982
    invoke-virtual {v11, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 983
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 954
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_6
    const/4 v8, 0x1

    .line 955
    if-nez p3, :cond_8

    .line 956
    sget-boolean v15, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v15, :cond_7

    const-string v15, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDatasIgnoreThesame("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "): server clean this mimetype."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 957
    :cond_7
    const/4 v12, 0x0

    .line 958
    goto/16 :goto_2

    .line 960
    :cond_8
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v5, v15, :cond_a

    .line 961
    sget-boolean v15, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v15, :cond_9

    const-string v15, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDatasIgnoreThesame("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "): device have more data than server."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 962
    :cond_9
    const/4 v12, 0x0

    .line 963
    goto/16 :goto_2

    .line 965
    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    move-object/from16 v0, p6

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 966
    sget-boolean v15, Lcom/htc/android/mail/eassvc/contact/ContactManager;->DEBUG:Z

    if-eqz v15, :cond_b

    const-string v15, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateDatasIgnoreThesame("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "): column not fully the same."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 967
    :cond_b
    const/4 v12, 0x0

    .line 968
    goto/16 :goto_2

    .line 970
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 986
    :cond_d
    if-nez v12, :cond_f

    .line 987
    const-string v14, "mimetype=? AND raw_contact_id=?"

    .line 988
    .local v14, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->appendCondition([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 989
    .local v4, appCondition:Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 990
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AND ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 992
    :cond_e
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 993
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object p5, v15, v16

    const/16 v16, 0x1

    aput-object p4, v15, v16

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 994
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    if-eqz p3, :cond_f

    .line 996
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 997
    .restart local v6       #cv:Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 998
    invoke-virtual {v11, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 999
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1004
    .end local v4           #appCondition:Ljava/lang/String;
    .end local v5           #count:I
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v7           #data:Ljava/lang/String;
    .end local v8           #foundInDb:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #mime:Ljava/lang/String;
    .end local v12           #theSame:Z
    .end local v14           #whereClause:Ljava/lang/String;
    :cond_f
    return-void
.end method

.method updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "cursor"
    .parameter
    .parameter "contentValue"
    .parameter "mimeType"
    .parameter "dataCol"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 790
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    aput-object p5, v5, v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "cursor"
    .parameter
    .parameter "contentValue"
    .parameter "mimeType"
    .parameter "dataCol"
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 810
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p5, v5, v0

    const/4 v6, 0x0

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p6, v7, v0

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p7, v8, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "cursor"
    .parameter
    .parameter "contentValue"
    .parameter "mimeType"
    .parameter "dataCol"
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 800
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p5, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method updateSingleData(Landroid/database/Cursor;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .parameter "cursor"
    .parameter
    .parameter "contentValue"
    .parameter "mimeType"
    .parameter "dataCols"
    .parameter "bytedata"
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 820
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 821
    .local v14, operBuilder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 822
    .local v5, builder:Landroid/net/Uri$Builder;
    const-string v16, "caller_is_syncadapter"

    const-string v17, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 823
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-nez v16, :cond_1

    .line 824
    if-eqz p3, :cond_0

    .line 825
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 826
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 827
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    const/4 v13, 0x1

    .line 831
    .local v13, needUpdate:Z
    const/4 v9, 0x0

    .line 833
    .local v9, dataId:Ljava/lang/String;
    :cond_2
    const-string v16, "mimetype"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 834
    .local v12, mime:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 835
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->checkCondition(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 874
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_2

    .line 875
    :goto_1
    if-eqz v9, :cond_12

    .line 876
    invoke-virtual {v5, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 877
    if-nez p3, :cond_11

    .line 878
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 879
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 838
    :cond_4
    if-eqz p5, :cond_6

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_6

    .line 839
    const/4 v15, 0x1

    .line 840
    .local v15, thesame:Z
    if-nez p3, :cond_7

    .line 841
    const/4 v15, 0x0

    .line 867
    :cond_5
    :goto_2
    if-nez v15, :cond_0

    .line 871
    .end local v15           #thesame:Z
    :cond_6
    const-string v16, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 872
    goto :goto_1

    .line 842
    .restart local v15       #thesame:Z
    :cond_7
    if-eqz p6, :cond_a

    .line 843
    move-object/from16 v4, p5

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v11, :cond_5

    aget-object v8, v4, v10

    .line 844
    .local v8, dataCol:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 845
    .local v6, data:[B
    if-nez p3, :cond_8

    const/4 v7, 0x0

    .line 846
    .local v7, data2:[B
    :goto_4
    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16

    if-nez v16, :cond_9

    .line 848
    const/4 v15, 0x0

    .line 849
    goto :goto_2

    .line 845
    .end local v7           #data2:[B
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_4

    .line 843
    .restart local v7       #data2:[B
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 853
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #data:[B
    .end local v7           #data2:[B
    .end local v8           #dataCol:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_a
    move-object/from16 v4, p5

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v11, v4

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_5
    if-ge v10, v11, :cond_5

    aget-object v8, v4, v10

    .line 854
    .restart local v8       #dataCol:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 855
    .local v6, data:Ljava/lang/String;
    if-nez p3, :cond_c

    const-string v7, ""

    .line 856
    .local v7, data2:Ljava/lang/String;
    :goto_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 853
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 855
    .end local v7           #data2:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 857
    .restart local v7       #data2:Ljava/lang/String;
    :cond_d
    if-nez v6, :cond_e

    if-nez v7, :cond_10

    :cond_e
    if-eqz v6, :cond_f

    if-eqz v7, :cond_10

    :cond_f
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 861
    :cond_10
    const/4 v15, 0x0

    .line 862
    goto/16 :goto_2

    .line 881
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #data:Ljava/lang/String;
    .end local v7           #data2:Ljava/lang/String;
    .end local v8           #dataCol:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v15           #thesame:Z
    :cond_11
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 882
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 883
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 886
    :cond_12
    if-eqz p3, :cond_0

    .line 887
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 888
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 889
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public updateSynckeyAndTracker(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
    .parameter "synckey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1900
    .local p2, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1901
    .local v6, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1905
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v5, 0x0

    .line 1906
    .local v5, idList:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1907
    .local v4, id:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1908
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1910
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1913
    .end local v4           #id:Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(serverId IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "))"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1915
    .local v7, trackingWhere:Ljava/lang/String;
    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 1916
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    const-string v9, "caller_is_syncadapter"

    const-string v10, "true"

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1917
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1918
    const-string v9, "deleted = 1 AND account_type=? AND account_name=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1920
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    if-eqz v5, :cond_2

    .line 1923
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1924
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sourceid IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") AND account_type=? AND account_name=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1926
    const-string v9, "dirty"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1927
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    sget-object v9, Lcom/htc/android/mail/eassvc/contact/ContactManager;->tackingUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1931
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serverId IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") AND _delete = 1 AND accountName=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1932
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    :cond_2
    sget-object v9, Lcom/htc/android/mail/eassvc/contact/ContactManager;->tackingUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1938
    const-string v9, "_delete = 1 AND _syncing=1 AND accountName=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1939
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1941
    sget-object v9, Lcom/htc/android/mail/eassvc/contact/ContactManager;->tackingUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1942
    if-eqz v5, :cond_3

    .line 1943
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " OR _syncing=1) AND accountName=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1947
    :goto_1
    const-string v9, "_add"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1948
    const-string v9, "_modify"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1949
    const-string v9, "_syncing"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1950
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1952
    sget-object v9, Landroid/provider/Contacts$People;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1953
    const-string v9, "synckey"

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1954
    const-string v9, "accountName=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1955
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1958
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "com.android.contacts"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1966
    return-void

    .line 1945
    :cond_3
    const-string v9, "_syncing=1 AND accountName=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 1959
    :catch_0
    move-exception v2

    .line 1960
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "EAS_CONMGR"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/contact/ContactManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%s: %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1961
    new-instance v9, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v10, 0x320

    const-string v11, "add contact fail"

    invoke-direct {v9, v10, v11}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v9
.end method
