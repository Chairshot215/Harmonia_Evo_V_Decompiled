.class public Lcom/htc/android/mail/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/Account$HuxServerInfo;,
        Lcom/htc/android/mail/Account$DeviceInfo;
    }
.end annotation


# static fields
.field public static final ACCOUNT_AVAILABLE:I = -0x1

.field public static final ACCOUNT_DELETED:I = 0x1

.field public static final ACCOUNT_NEED_VERIFIED:I = -0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLL_QUANTUM_10_MIN:I = 0x2

.field public static final POLL_QUANTUM_120_MIN:I = 0x6

.field public static final POLL_QUANTUM_15_MIN:I = 0x3

.field public static final POLL_QUANTUM_240_MIN:I = 0x7

.field public static final POLL_QUANTUM_24_HR:I = 0x8

.field public static final POLL_QUANTUM_30_MIN:I = 0x4

.field public static final POLL_QUANTUM_5_MIN:I = 0x1

.field public static final POLL_QUANTUM_60_MIN:I = 0x5

.field public static final POLL_QUANTUM_ITEM_ARRIVE:I = 0x9

.field public static final POLL_QUANTUM_MANUAL:I = 0x0

.field static final TAG:Ljava/lang/String; = "Account"

.field public static final sCombinedAccountId:J = 0x7fffffffffffffffL

.field public static final sHuxUnifiedAccountId:J = 0x7ffffffffffffffdL

.field public static final sMimeViewerAccountId:J = 0x7ffffffffffffffeL


# instance fields
.field private mIAccount:Lcom/htc/android/mail/account/IAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2933
    new-instance v0, Lcom/htc/android/mail/Account$1;

    invoke-direct {v0}, Lcom/htc/android/mail/Account$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 2943
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2944
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/Account;->readFromParcel(Landroid/os/Parcel;)V

    .line 2945
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/Account$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/android/mail/Account;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/account/IAccount;)V
    .locals 0
    .parameter "iAccount"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    .line 114
    return-void
.end method

.method public static addAccountDelProhibition(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/4 v3, 0x1

    .line 1568
    const-string v1, "AccountDelProhibition"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1569
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1570
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1571
    return v3
.end method

.method public static applyBatchAccountToDatabases(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .parameter "context"
    .parameter "accountValues"

    .prologue
    .line 605
    const/4 v10, -0x1

    .line 606
    .local v10, operation_index:I
    const/4 v6, 0x0

    .line 607
    .local v6, account_operation_index:I
    const/4 v9, 0x0

    .line 609
    .local v9, mailbox_operation_index:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v11, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    add-int/lit8 v10, v10, 0x1

    .line 612
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 614
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 615
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    move v6, v10

    .line 618
    const-string v17, "_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 620
    .local v12, protocol:I
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 621
    .local v15, values:Landroid/content/ContentValues;
    const/16 v16, 0x0

    .line 623
    .local v16, where:Ljava/lang/String;
    if-eqz v12, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_2

    .line 626
    :cond_0
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 627
    const-string v17, "_undecodename"

    const v18, 0x7f0b01ce

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v17, "_decodename"

    const v18, 0x7f0b01ce

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v17, "_shortname"

    const v18, 0x7f0b01ce

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v17, "_serverfolder"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    const-string v17, "_defaultfolder"

    const v18, 0x7fffffff

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    const-string v17, "_movegroup"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    const-string v17, "_showsender"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    const-string v17, "_default_sync"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    add-int/lit8 v10, v10, 0x1

    .line 637
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 638
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 639
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 640
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    move v9, v10

    .line 644
    add-int/lit8 v10, v10, 0x1

    .line 645
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 646
    const-string v16, "_id = ?"

    .line 647
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 648
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 649
    const-string v17, "_defaultfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 650
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 651
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 656
    const-string v17, "_undecodename"

    const v18, 0x7f0b01d2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v17, "_decodename"

    const v18, 0x7f0b01d2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v17, "_shortname"

    const v18, 0x7f0b01d2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v17, "_serverfolder"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffe

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    const-string v17, "_movegroup"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    const-string v17, "_showsender"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    add-int/lit8 v10, v10, 0x1

    .line 665
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 666
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 667
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 668
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    move v9, v10

    .line 672
    add-int/lit8 v10, v10, 0x1

    .line 673
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 674
    const-string v16, "_id = ?"

    .line 675
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 676
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 677
    const-string v17, "_trashfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 678
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 679
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 684
    const-string v17, "_undecodename"

    const v18, 0x7f0b01d1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v17, "_decodename"

    const v18, 0x7f0b01d1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v17, "_shortname"

    const v18, 0x7f0b01d1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v17, "_serverfolder"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffc

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    const-string v17, "_movegroup"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string v17, "_showsender"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    add-int/lit8 v10, v10, 0x1

    .line 693
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 694
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 695
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 696
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    move v9, v10

    .line 700
    add-int/lit8 v10, v10, 0x1

    .line 701
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 702
    const-string v16, "_id = ?"

    .line 703
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 704
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 705
    const-string v17, "_draftfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 706
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 707
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 712
    const-string v17, "_undecodename"

    const v18, 0x7f0b01d4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v17, "_decodename"

    const v18, 0x7f0b01d4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v17, "_shortname"

    const v18, 0x7f0b01d4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v17, "_serverfolder"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffb

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    const-string v17, "_movegroup"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    const-string v17, "_showsender"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    add-int/lit8 v10, v10, 0x1

    .line 721
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 722
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 723
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 724
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    move v9, v10

    .line 728
    add-int/lit8 v10, v10, 0x1

    .line 729
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 730
    const-string v16, "_id = ?"

    .line 731
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 732
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 733
    const-string v17, "_outfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 734
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 735
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 740
    const-string v17, "_undecodename"

    const v18, 0x7f0b01d3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v17, "_decodename"

    const v18, 0x7f0b01d3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v17, "_shortname"

    const v18, 0x7f0b01d3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v17, "_serverfolder"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffd

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    const-string v17, "_movegroup"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    const-string v17, "_showsender"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 748
    add-int/lit8 v10, v10, 0x1

    .line 749
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 750
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 751
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 752
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    move v9, v10

    .line 757
    add-int/lit8 v10, v10, 0x1

    .line 758
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 759
    const-string v16, "_id = ?"

    .line 760
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 761
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 762
    const-string v17, "_sentfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 763
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 764
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    :cond_1
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_4

    const/16 v17, 0x0

    .line 1110
    :goto_1
    return-object v17

    .line 767
    :cond_2
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_3

    .line 769
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 770
    const-string v17, "_undecodename"

    const-string v18, "INBOX"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v17, "_decodename"

    const-string v18, "INBOX"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v17, "_shortname"

    const v18, 0x7f0b01ce

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v17, "_serverfolder"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string v17, "_defaultfolder"

    const v18, 0x7fffffff

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const-string v17, "_default_sync"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    add-int/lit8 v10, v10, 0x1

    .line 778
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 779
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 780
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 781
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    move v9, v10

    .line 785
    add-int/lit8 v10, v10, 0x1

    .line 786
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 787
    const-string v16, "_id = ?"

    .line 788
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 789
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 790
    const-string v17, "_defaultfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 791
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 792
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 797
    const v17, 0x7f0b01d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, IMAPStr:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v17, "IMAP-mailbox-name"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_9

    .end local v2           #IMAPStr:Ljava/lang/String;
    .local v3, IMAPStr:Ljava/lang/String;
    move-object v2, v3

    .line 803
    .end local v3           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :goto_2
    const-string v17, "_undecodename"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v17, "_decodename"

    const v18, 0x7f0b01d2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v17, "_shortname"

    const v18, 0x7f0b01d2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v17, "_serverfolder"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 807
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffe

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    const-string v17, "_movegroup"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 809
    const-string v17, "_showsender"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 811
    add-int/lit8 v10, v10, 0x1

    .line 812
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 813
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 814
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 815
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    move v9, v10

    .line 819
    add-int/lit8 v10, v10, 0x1

    .line 820
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 821
    const-string v16, "_id = ?"

    .line 822
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 823
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 824
    const-string v17, "_trashfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 825
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 826
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 831
    const v17, 0x7f0b01d1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 833
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v17, "IMAP-mailbox-name"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8

    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v3       #IMAPStr:Ljava/lang/String;
    move-object v2, v3

    .line 837
    .end local v3           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :goto_3
    const-string v17, "_undecodename"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v17, "_decodename"

    const v18, 0x7f0b01d1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v17, "_shortname"

    const v18, 0x7f0b01d1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v17, "_serverfolder"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffc

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    const-string v17, "_movegroup"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    const-string v17, "_showsender"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    add-int/lit8 v10, v10, 0x1

    .line 846
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 847
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 848
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 849
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    move v9, v10

    .line 853
    add-int/lit8 v10, v10, 0x1

    .line 854
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 855
    const-string v16, "_id = ?"

    .line 856
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 857
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 858
    const-string v17, "_draftfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 859
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 860
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 864
    const v17, 0x7f0b01d4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 866
    :try_start_2
    new-instance v3, Ljava/lang/String;

    const-string v17, "IMAP-mailbox-name"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_7

    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v3       #IMAPStr:Ljava/lang/String;
    move-object v2, v3

    .line 870
    .end local v3           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :goto_4
    const-string v17, "_undecodename"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v17, "_decodename"

    const v18, 0x7f0b01d4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v17, "_shortname"

    const v18, 0x7f0b01d4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v17, "_serverfolder"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffb

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    const-string v17, "_movegroup"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    const-string v17, "_showsender"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    add-int/lit8 v10, v10, 0x1

    .line 879
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 880
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 881
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 882
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    move v9, v10

    .line 886
    add-int/lit8 v10, v10, 0x1

    .line 887
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 888
    const-string v16, "_id = ?"

    .line 889
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 890
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 891
    const-string v17, "_outfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 892
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 893
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 898
    const v17, 0x7f0b01d3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 900
    :try_start_3
    new-instance v3, Ljava/lang/String;

    const-string v17, "IMAP-mailbox-name"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6

    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v3       #IMAPStr:Ljava/lang/String;
    move-object v2, v3

    .line 904
    .end local v3           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :goto_5
    const-string v17, "_undecodename"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v17, "_decodename"

    const v18, 0x7f0b01d3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v17, "_shortname"

    const v18, 0x7f0b01d3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v17, "_serverfolder"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffd

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 909
    const-string v17, "_movegroup"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 910
    const-string v17, "_showsender"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    add-int/lit8 v10, v10, 0x1

    .line 913
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 914
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 915
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 916
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    move v9, v10

    .line 920
    add-int/lit8 v10, v10, 0x1

    .line 921
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 922
    const-string v16, "_id = ?"

    .line 923
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 924
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 925
    const-string v17, "_sentfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 926
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 927
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 928
    .end local v2           #IMAPStr:Ljava/lang/String;
    :cond_3
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v12, v0, :cond_1

    .line 930
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 931
    const-string v17, "_undecodename"

    const-string v18, "UnifiedInbox"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v17, "_decodename"

    const-string v18, "UnifiedInbox"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v17, "_shortname"

    const v18, 0x7f0b01ce

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v17, "_serverfolder"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const-string v17, "_defaultfolder"

    const v18, 0x7fffffff

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 936
    const-string v17, "_movegroup"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 937
    const-string v17, "_showsender"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    const-string v17, "_default_sync"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    add-int/lit8 v10, v10, 0x1

    .line 941
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 942
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 943
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 944
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    move v9, v10

    .line 948
    add-int/lit8 v10, v10, 0x1

    .line 949
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 950
    const-string v16, "_id = ?"

    .line 951
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 952
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 953
    const-string v17, "_defaultfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 954
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 955
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 960
    const v17, 0x7f0b01d2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 962
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :try_start_4
    new-instance v3, Ljava/lang/String;

    const-string v17, "IMAP-mailbox-name"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5

    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v3       #IMAPStr:Ljava/lang/String;
    move-object v2, v3

    .line 966
    .end local v3           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :goto_6
    const-string v17, "_undecodename"

    const-string v18, "Trash"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v17, "_decodename"

    const-string v18, "Trash"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v17, "_shortname"

    const v18, 0x7f0b01d2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v17, "_serverfolder"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffe

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    const-string v17, "_movegroup"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 972
    const-string v17, "_showsender"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 974
    add-int/lit8 v10, v10, 0x1

    .line 975
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 976
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 977
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 978
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    move v9, v10

    .line 982
    add-int/lit8 v10, v10, 0x1

    .line 983
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 984
    const-string v16, "_id = ?"

    .line 985
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 986
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 987
    const-string v17, "_trashfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 988
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 989
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 994
    const v17, 0x7f0b01d1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 996
    :try_start_5
    new-instance v3, Ljava/lang/String;

    const-string v17, "IMAP-mailbox-name"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4

    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v3       #IMAPStr:Ljava/lang/String;
    move-object v2, v3

    .line 1000
    .end local v3           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :goto_7
    const-string v17, "_undecodename"

    const-string v18, "UnifiedInbox"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v17, "_decodename"

    const-string v18, "UnifiedInbox"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v17, "_shortname"

    const v18, 0x7f0b01d1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v17, "_serverfolder"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffc

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    const-string v17, "_movegroup"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    const-string v17, "_showsender"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1008
    add-int/lit8 v10, v10, 0x1

    .line 1009
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1010
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1011
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1012
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    move v9, v10

    .line 1016
    add-int/lit8 v10, v10, 0x1

    .line 1017
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1018
    const-string v16, "_id = ?"

    .line 1019
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1020
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1021
    const-string v17, "_draftfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1022
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1023
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1027
    const v17, 0x7f0b01d4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1029
    :try_start_6
    new-instance v3, Ljava/lang/String;

    const-string v17, "IMAP-mailbox-name"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v3       #IMAPStr:Ljava/lang/String;
    move-object v2, v3

    .line 1033
    .end local v3           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :goto_8
    const-string v17, "_undecodename"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v17, "_decodename"

    const v18, 0x7f0b01d4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v17, "_shortname"

    const v18, 0x7f0b01d4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v17, "_serverfolder"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffb

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    const-string v17, "_movegroup"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1039
    const-string v17, "_showsender"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    add-int/lit8 v10, v10, 0x1

    .line 1042
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1043
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1044
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1045
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    move v9, v10

    .line 1049
    add-int/lit8 v10, v10, 0x1

    .line 1050
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1051
    const-string v16, "_id = ?"

    .line 1052
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1053
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1054
    const-string v17, "_outfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1055
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1056
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1061
    const v17, 0x7f0b01d3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1063
    :try_start_7
    new-instance v3, Ljava/lang/String;

    const-string v17, "IMAP-mailbox-name"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2

    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v3       #IMAPStr:Ljava/lang/String;
    move-object v2, v3

    .line 1067
    .end local v3           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :goto_9
    const-string v17, "_undecodename"

    const-string v18, "UnifiedInbox"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string v17, "_decodename"

    const-string v18, "UnifiedInbox"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v17, "_shortname"

    const v18, 0x7f0b01d3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string v17, "_serverfolder"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1071
    const-string v17, "_defaultfolder"

    const v18, 0x7ffffffd

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1072
    const-string v17, "_movegroup"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1073
    const-string v17, "_showsender"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    add-int/lit8 v10, v10, 0x1

    .line 1076
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1077
    invoke-virtual {v7, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1078
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1079
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    move v9, v10

    .line 1083
    add-int/lit8 v10, v10, 0x1

    .line 1084
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1085
    const-string v16, "_id = ?"

    .line 1086
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1087
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1088
    const-string v17, "_sentfolderId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1089
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1090
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1096
    .end local v2           #IMAPStr:Ljava/lang/String;
    :cond_4
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1097
    .local v13, resolver:Landroid/content/ContentResolver;
    const-string v17, "mail"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v14

    .line 1099
    .local v14, results:[Landroid/content/ContentProviderResult;
    if-eqz v14, :cond_5

    array-length v0, v14

    move/from16 v17, v0

    if-lez v17, :cond_5

    const/16 v17, 0x0

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1100
    const/16 v17, 0x0

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1101
    .local v4, accountId:J
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    .line 1102
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/MailCommon;->setMailShortcutState(Landroid/content/Context;)V

    .line 1104
    .end local v4           #accountId:J
    :cond_5
    const/16 v17, 0x0

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 1105
    .end local v13           #resolver:Landroid/content/ContentResolver;
    .end local v14           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v8

    .line 1106
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1110
    .end local v8           #e:Landroid/os/RemoteException;
    :goto_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1107
    :catch_1
    move-exception v8

    .line 1108
    .local v8, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_a

    .line 1064
    .end local v8           #e:Landroid/content/OperationApplicationException;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    :catch_2
    move-exception v17

    goto/16 :goto_9

    .line 1030
    :catch_3
    move-exception v17

    goto/16 :goto_8

    .line 997
    :catch_4
    move-exception v17

    goto/16 :goto_7

    .line 963
    :catch_5
    move-exception v17

    goto/16 :goto_6

    .line 901
    :catch_6
    move-exception v17

    goto/16 :goto_5

    .line 867
    :catch_7
    move-exception v17

    goto/16 :goto_4

    .line 834
    :catch_8
    move-exception v17

    goto/16 :goto_3

    .line 800
    :catch_9
    move-exception v17

    goto/16 :goto_2
.end method

.method public static checkIfAccountExists(J)Z
    .locals 4
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 2952
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 2967
    :cond_0
    :goto_0
    return v1

    .line 2956
    :cond_1
    const/4 v0, 0x0

    .line 2957
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-static {p0, p1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2959
    if-eqz v0, :cond_0

    .line 2963
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2967
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static clearAllNotification(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 478
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/NewMailNotification;->clearNotification(Landroid/content/Context;J)I

    .line 479
    new-instance v1, Lcom/htc/android/mail/SendErrorNotification;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 480
    .local v1, sendnotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/SendErrorNotification;->clearNotification(J)I

    .line 481
    new-instance v0, Lcom/htc/android/mail/SMTPAccountErrorNotification;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/SMTPAccountErrorNotification;-><init>(Landroid/content/Context;)V

    .line 482
    .local v0, accountnotify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->clearNotification(J)I

    .line 483
    return-void
.end method

.method public static final createAccountByEmail(Landroid/content/Context;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 26
    .parameter "c"
    .parameter "b"

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    const/16 v18, 0x0

    .line 334
    :goto_0
    return-object v18

    .line 261
    :cond_0
    const-string v22, "email"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, email:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/mail/Account;->findAccountByEmail(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 264
    const/16 v18, 0x0

    goto :goto_0

    .line 266
    :cond_1
    const-string v22, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 267
    .local v14, password:Ljava/lang/String;
    if-eqz v7, :cond_2

    if-eqz v14, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    const/16 v22, 0x40

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 268
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 271
    :cond_3
    const/4 v4, 0x0

    .line 272
    .local v4, description:Ljava/lang/String;
    const-string v5, ""

    .line 273
    .local v5, domain:Ljava/lang/String;
    move-object/from16 v21, v7

    .line 274
    .local v21, username:Ljava/lang/String;
    const/16 v22, 0x40

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 275
    .local v11, index:I
    if-ltz v11, :cond_5

    .line 277
    add-int/lit8 v22, v11, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 282
    if-eqz v5, :cond_4

    if-eqz v21, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-gtz v22, :cond_6

    .line 283
    :cond_4
    const/16 v18, 0x0

    goto :goto_0

    .line 280
    :cond_5
    const/16 v18, 0x0

    goto :goto_0

    .line 285
    :cond_6
    const/4 v15, -0x1

    .line 286
    .local v15, providerId:I
    const-string v22, "provider"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 287
    .local v16, providerStr:Ljava/lang/String;
    const-string v22, "inServer"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, inServer:Ljava/lang/String;
    const-string v22, "outServer"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 289
    .local v13, outServer:Ljava/lang/String;
    const-string v22, "inPort"

    const/16 v23, 0x6e

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 290
    .local v8, inPort:I
    const-string v22, "outPort"

    const/16 v23, 0x19

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 291
    .local v12, outPort:I
    const-string v22, "inProtocol"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 292
    .local v9, inProtocol:I
    const-string v22, "inSSL"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 293
    .local v19, useSSLin:I
    const-string v22, "outSSL"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 294
    .local v20, useSSLout:I
    const-string v22, "smtpAuth"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 296
    .local v17, smtpAuth:I
    if-eqz v10, :cond_7

    if-eqz v13, :cond_7

    if-eqz v21, :cond_7

    if-nez v5, :cond_8

    .line 297
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 300
    :cond_8
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v3, cv:Landroid/content/ContentValues;
    const-string v22, "_name"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v22, "_protocol"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v22, "_inserver"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v22, "_inport"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v22, "_outserver"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v22, "_outport"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v22, "_emailaddress"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v22, "_provider"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v22, "_providerid"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string v22, "_username"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v22, "_password"

    invoke-static {v14}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v22, "_outusername"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v22, "_outpassword"

    invoke-static {v14}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v22, "_useSSLin"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v22, "_useSSLout"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v22, "_flags"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v22, "_desc"

    if-nez v4, :cond_9

    .end local v7           #email:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v22, "_smtpauth"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v22, "_poll_frequency_number"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const/16 v18, 0x0

    .line 324
    .local v18, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v22

    sget-object v23, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v3}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 325
    const-string v22, "Account"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "insert account:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    if-nez v18, :cond_a

    const/16 v18, 0x0

    goto/16 :goto_0

    .end local v18           #uri:Landroid/net/Uri;
    .restart local v7       #email:Ljava/lang/String;
    :cond_9
    move-object v7, v4

    .line 317
    goto :goto_1

    .line 328
    .end local v7           #email:Ljava/lang/String;
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_a
    invoke-static/range {v18 .. v18}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2, v9}, Lcom/htc/android/mail/Account;->insertMailboxs(Landroid/content/Context;JI)V

    .line 329
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Account;->forceDefaultAccount(Landroid/content/Context;)V

    .line 330
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 331
    :catch_0
    move-exception v6

    .line 332
    .local v6, e:Ljava/lang/Exception;
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public static final createAccountByEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 25
    .parameter "context"
    .parameter "email"
    .parameter "password"
    .parameter "description"

    .prologue
    .line 340
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 341
    :cond_0
    const/16 v21, 0x0

    .line 431
    .end local p1
    :cond_1
    :goto_0
    return-object v21

    .line 344
    .restart local p1
    :cond_2
    const-string v9, ""

    .line 345
    .local v9, domain:Ljava/lang/String;
    const-string v24, ""

    .line 346
    .local v24, username:Ljava/lang/String;
    const-string v4, "_domain like ?"

    .line 347
    .local v4, where:Ljava/lang/String;
    const/16 v1, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 348
    .local v14, index:I
    if-ltz v14, :cond_4

    .line 349
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 350
    add-int/lit8 v1, v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 355
    if-eqz v9, :cond_3

    if-eqz v24, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 356
    :cond_3
    const/16 v21, 0x0

    goto :goto_0

    .line 353
    :cond_4
    const/16 v21, 0x0

    goto :goto_0

    .line 358
    :cond_5
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v5, v1

    .line 359
    .local v5, args:[Ljava/lang/String;
    const/16 v18, -0x1

    .line 360
    .local v18, providerId:I
    const-string v19, ""

    .line 361
    .local v19, providerStr:Ljava/lang/String;
    const/16 v17, 0x0

    .line 362
    .local v17, providerGroup:Ljava/lang/String;
    const-string v13, ""

    .line 363
    .local v13, inServer:Ljava/lang/String;
    const-string v16, ""

    .line 364
    .local v16, outServer:Ljava/lang/String;
    const/4 v11, 0x0

    .line 365
    .local v11, inPort:I
    const/4 v15, 0x0

    .line 366
    .local v15, outPort:I
    const/4 v12, 0x0

    .line 367
    .local v12, inProtocol:I
    const/16 v22, 0x0

    .line 368
    .local v22, useSSLin:I
    const/16 v23, 0x0

    .line 369
    .local v23, useSSLout:I
    const/16 v20, 0x0

    .line 371
    .local v20, smtpAuth:I
    const/4 v7, 0x0

    .line 373
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 374
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 375
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 376
    const-string v1, "_provider"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 377
    const-string v1, "_providerGroup"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 378
    const-string v1, "_inserver"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 379
    const-string v1, "_inport"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 380
    const-string v1, "_outserver"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 381
    const-string v1, "_outport"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 382
    const-string v1, "_inprotocol"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 383
    const-string v1, "_useSSLin"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 384
    const-string v1, "_useSSLout"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 385
    const-string v1, "_smtpauth"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 392
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_6
    :goto_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v8, cv:Landroid/content/ContentValues;
    const-string v1, "_name"

    move-object/from16 v0, p1

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "_protocol"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v1, "_inserver"

    invoke-virtual {v8, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "_inport"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    const-string v1, "_outserver"

    move-object/from16 v0, v16

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "_outport"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const-string v1, "_emailaddress"

    move-object/from16 v0, p1

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "_provider"

    move-object/from16 v0, v19

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "_providerGroup"

    move-object/from16 v0, v17

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "_providerid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    const-string v1, "_username"

    move-object/from16 v0, v24

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "_password"

    invoke-static/range {p2 .. p2}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "_outusername"

    move-object/from16 v0, v24

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v1, "_outpassword"

    invoke-static/range {p2 .. p2}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "_useSSLin"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v1, "_useSSLout"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v1, "_flags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v1, "_desc"

    if-nez p3, :cond_9

    .end local p1
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v1, "_smtpauth"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const/16 v21, 0x0

    .line 422
    .local v21, uri:Landroid/net/Uri;
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-interface {v1, v2, v8}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v21

    .line 423
    if-nez v21, :cond_a

    const/16 v21, 0x0

    goto/16 :goto_0

    .line 387
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v21           #uri:Landroid/net/Uri;
    .restart local p1
    :cond_7
    const/16 v21, 0x0

    .line 392
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 389
    :catch_0
    move-exception v10

    .line 390
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 392
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .restart local v8       #cv:Landroid/content/ContentValues;
    :cond_9
    move-object/from16 p1, p3

    .line 416
    goto :goto_2

    .line 425
    .end local p1
    .restart local v21       #uri:Landroid/net/Uri;
    :cond_a
    :try_start_3
    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v12}, Lcom/htc/android/mail/Account;->insertMailboxs(Landroid/content/Context;JI)V

    .line 426
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Account;->forceDefaultAccount(Landroid/content/Context;)V

    .line 427
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 428
    :catch_1
    move-exception v10

    .line 429
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v21, 0x0

    goto/16 :goto_0
.end method

.method public static decodePwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "src"

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    rsub-int/lit8 v0, v6, 0x4

    .line 139
    .local v0, appendingLen:I
    const/4 v6, 0x4

    if-ge v0, v6, :cond_0

    .line 140
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v3           #i:I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 145
    .local v1, encodeStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 146
    .end local v1           #encodeStr:Ljava/lang/String;
    .local v2, encodeStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 148
    .local v4, srcArray:[C
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 149
    aget-char v5, v4, v3

    .line 150
    .local v5, tmpChar:C
    add-int/lit8 v6, v3, 0x1

    aget-char v6, v4, v6

    aput-char v6, v4, v3

    .line 151
    add-int/lit8 v6, v3, 0x1

    aput-char v5, v4, v6

    .line 148
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 153
    .end local v5           #tmpChar:C
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method public static encodePwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "src"

    .prologue
    .line 117
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 133
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 121
    .local v5, srcArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 122
    aget-char v6, v5, v3

    .line 123
    .local v6, tmpChar:C
    add-int/lit8 v7, v3, 0x1

    aget-char v7, v5, v7

    aput-char v7, v5, v3

    .line 124
    add-int/lit8 v7, v3, 0x1

    aput-char v6, v5, v7

    .line 121
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 126
    .end local v6           #tmpChar:C
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    .line 127
    .local v2, encodeStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 128
    .local v0, base64Str:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    .line 129
    .end local v0           #base64Str:Ljava/lang/String;
    .local v1, base64Str:Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 130
    .local v4, index:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 131
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static find139Account()J
    .locals 11

    .prologue
    .line 515
    const/4 v8, 0x0

    .line 516
    .local v8, c:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 518
    .local v6, accountId:J
    :try_start_0
    const-string v3, "_del = -1 AND _provider = \'139\'"

    .line 519
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "139.com"

    aput-object v1, v10, v0

    .line 520
    .local v10, selectionArg:[Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 521
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 524
    :cond_0
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find139Account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v0, v6

    .end local v3           #where:Ljava/lang/String;
    .end local v10           #selectionArg:[Ljava/lang/String;
    :cond_2
    :goto_0
    return-wide v0

    .line 526
    :catch_0
    move-exception v9

    .line 527
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    const-wide/16 v0, -0x1

    .line 530
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 531
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 530
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 531
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static findAccountByEmail(Ljava/lang/String;)J
    .locals 12
    .parameter "email"

    .prologue
    const-wide/16 v10, -0x1

    .line 492
    if-nez p0, :cond_1

    move-wide v6, v10

    .line 509
    :cond_0
    :goto_0
    return-wide v6

    .line 495
    :cond_1
    const/4 v8, 0x0

    .line 496
    .local v8, c:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 498
    .local v6, accountId:J
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_del = \'-1\' AND _emailaddress = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 499
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 502
    :cond_2
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAccontByEmail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 504
    :catch_0
    move-exception v9

    .line 505
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 509
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v6, v10

    goto :goto_0

    .line 508
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 509
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static findNeedVerify139Account()J
    .locals 10

    .prologue
    .line 548
    const/4 v8, 0x0

    .line 549
    .local v8, c:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 551
    .local v6, accountId:J
    :try_start_0
    const-string v3, "_del = -2 AND _provider = \'139\'"

    .line 552
    .local v3, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 553
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 556
    :cond_0
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find139Account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v0, v6

    .end local v3           #where:Ljava/lang/String;
    :cond_2
    :goto_0
    return-wide v0

    .line 558
    :catch_0
    move-exception v9

    .line 559
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    const-wide/16 v0, -0x1

    .line 562
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 563
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 562
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 563
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static forceDefaultAccount(Landroid/content/Context;)V
    .locals 14
    .parameter "c"

    .prologue
    const/4 v13, 0x1

    .line 435
    const/4 v6, 0x0

    .line 437
    .local v6, accountCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_del = -1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 438
    if-nez v6, :cond_1

    .line 463
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    :try_start_1
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceDefaultAccount>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v13, :cond_3

    .line 444
    const/4 v9, 0x0

    .line 445
    .local v9, foundDefault:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 446
    invoke-interface {v6, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 447
    const-string v0, "_defaultaccount"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 448
    .local v7, d:I
    if-ne v7, v13, :cond_4

    .line 449
    const/4 v9, 0x1

    .line 453
    .end local v7           #d:I
    :cond_2
    if-nez v9, :cond_3

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 455
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 456
    .local v11, id:J
    invoke-static {p0, v11, v12}, Lcom/htc/android/mail/MailProvider;->setDefaultAccountById(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    .end local v9           #foundDefault:Z
    .end local v10           #i:I
    .end local v11           #id:J
    :cond_3
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 445
    .restart local v7       #d:I
    .restart local v9       #foundDefault:Z
    .restart local v10       #i:I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 459
    .end local v7           #d:I
    .end local v9           #foundDefault:Z
    .end local v10           #i:I
    :catch_0
    move-exception v8

    .line 460
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 463
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 101
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/account/AccountBinder;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "context"
    .parameter "syncAccount"

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/htc/android/mail/account/AccountBinder;->getAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/htc/android/mail/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountByEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "context"
    .parameter "emailAddress"
    .parameter "protocol"

    .prologue
    .line 109
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/account/AccountBinder;->getAccountByEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/htc/android/mail/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getCombinedAccount(Landroid/content/Context;Lcom/htc/android/mail/AccountPool$AccountStore;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "context"
    .parameter "accountStore"

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/htc/android/mail/account/AccountBinder;->getCombinedAccount(Landroid/content/Context;Lcom/htc/android/mail/AccountPool$AccountStore;)Lcom/htc/android/mail/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getDecodedColorIdx(I)[I
    .locals 3
    .parameter "encodedColorIdx"

    .prologue
    .line 157
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 158
    .local v0, result:[I
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    aput v2, v0, v1

    .line 159
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    aput v2, v0, v1

    .line 160
    return-object v0
.end method

.method public static getDefaultEncodedColorIdx()I
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v0

    return v0
.end method

.method public static getEncodedColorIdx(II)I
    .locals 1
    .parameter "group"
    .parameter "colorIdx"

    .prologue
    .line 168
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    return v0
.end method

.method public static getExchangeSetting(Landroid/content/Context;)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1461
    const-string v3, "exchangeAccountSetting"

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1462
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;-><init>()V

    .line 1464
    .local v0, account:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    const-string v3, "email"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    .line 1465
    const-string v3, "server"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    .line 1466
    const-string v3, "user"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    .line 1467
    const-string v3, "nickName"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    .line 1469
    const-string v3, ""

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 1491
    .end local v0           #account:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    :goto_0
    return-object v0

    .line 1475
    .restart local v0       #account:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    :cond_1
    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->password:Ljava/lang/String;

    .line 1476
    const-string v3, "NULL"

    const-string v4, "domain"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1477
    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    .line 1482
    :goto_1
    const-string v2, "daysToSync"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->daysToSync:I

    .line 1483
    const-string v2, "fetchFreq"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->fetchFreq:I

    .line 1485
    const-string v2, "secureFlag"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->secureFlag:Z

    .line 1486
    const-string v2, "verifyCertFlag"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->verifyCertFlag:Z

    .line 1487
    const-string v2, "ABSyncFlag"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->ABSyncFlag:Z

    .line 1488
    const-string v2, "CalSyncFlag"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->CalSyncFlag:Z

    .line 1489
    const-string v2, "MailSyncFlag"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->MailSyncFlag:Z

    goto :goto_0

    .line 1479
    :cond_2
    const-string v2, "domain"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getHuxNeedSyncAfterSyncAccount(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1396
    const-string v1, "account"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1397
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "isHuxNeedSyncAfterSyncAccount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getHuxUnifiedAccount(Landroid/content/Context;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/htc/android/mail/account/AccountBinder;->getHuxUnifiedAccount(Landroid/content/Context;)Lcom/htc/android/mail/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getIsExchangeSaved(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1436
    const-string v1, "account"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1437
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "isExchangeSaved"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getMDN(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1412
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1413
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1415
    .local v0, mdn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #mdn:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #mdn:Ljava/lang/String;
    :cond_0
    const-string v0, "0000000000"

    goto :goto_0
.end method

.method public static getNeedSyncHUXAccount(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1407
    const-string v1, "account"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1408
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "isNeedSyncHUXAccount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getNeedVerifyAccountId()J
    .locals 11

    .prologue
    .line 583
    const/4 v8, 0x0

    .line 584
    .local v8, c:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 586
    .local v6, accountId:J
    :try_start_0
    const-string v3, "_del = \'-1\' AND _emailaddress like ? AND _provider = \'139\' AND _del = -2"

    .line 587
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "139.com"

    aput-object v1, v4, v0

    .line 588
    .local v4, selectionArg:[Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "_id"

    aput-object v10, v2, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 589
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 592
    :cond_0
    const-string v0, "Account"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find139Account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v0, v6

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArg:[Ljava/lang/String;
    :cond_2
    :goto_0
    return-wide v0

    .line 594
    :catch_0
    move-exception v9

    .line 595
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    const-wide/16 v0, -0x1

    .line 598
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 598
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getPIN(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1374
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1375
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "vzw_hux_pin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPreviewLineNum()I
    .locals 3

    .prologue
    .line 2691
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getPreviewLineNum()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2692
    :catch_0
    move-exception v0

    .line 2693
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1385
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1386
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "vzw_hux_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTokenExpiry(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1425
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1426
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "vzw_hux_token_expiry"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVerifyDeviceInfoUpdateTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 1534
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1535
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "hux_verifyDeviceInfoupdateTime"

    const-wide/32 v2, 0x253d8c

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static insertMailboxs(Landroid/content/Context;JI)V
    .locals 11
    .parameter "c"
    .parameter "accountId"
    .parameter "inProtocol"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1114
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    .line 1115
    .local v2, cp:Landroid/content/IContentProvider;
    const-string v6, "Account"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertMailboxs>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1119
    .local v4, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    if-ne p3, v9, :cond_6

    .line 1120
    :cond_0
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1121
    const-string v6, "_undecodename"

    const v7, 0x7f0b01ce

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v6, "_decodename"

    const v7, 0x7f0b01ce

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v6, "_shortname"

    const v7, 0x7f0b01ce

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v6, "_serverfolder"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1125
    const-string v6, "_defaultfolder"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1127
    const-string v6, "_movegroup"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1128
    const-string v6, "_showsender"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    const-string v6, "_default_sync"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1130
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1132
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 1133
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1134
    const-string v6, "_defaultfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1135
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1136
    .local v5, where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1139
    .end local v5           #where:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1140
    const-string v6, "_undecodename"

    const v7, 0x7f0b01d2

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v6, "_decodename"

    const v7, 0x7f0b01d2

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v6, "_shortname"

    const v7, 0x7f0b01d2

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string v6, "_serverfolder"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1144
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1145
    const-string v6, "_movegroup"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1146
    const-string v6, "_showsender"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1147
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1149
    if-eqz v3, :cond_2

    .line 1150
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1151
    const-string v6, "_trashfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1152
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1153
    .restart local v5       #where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1156
    .end local v5           #where:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1157
    const-string v6, "_undecodename"

    const v7, 0x7f0b01d1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string v6, "_decodename"

    const v7, 0x7f0b01d1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v6, "_shortname"

    const v7, 0x7f0b01d1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v6, "_serverfolder"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1161
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1162
    const-string v6, "_movegroup"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    const-string v6, "_showsender"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1166
    if-eqz v3, :cond_3

    .line 1167
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1168
    const-string v6, "_draftfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1169
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1170
    .restart local v5       #where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1173
    .end local v5           #where:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1174
    const-string v6, "_undecodename"

    const v7, 0x7f0b01d4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v6, "_decodename"

    const v7, 0x7f0b01d4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v6, "_shortname"

    const v7, 0x7f0b01d4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v6, "_serverfolder"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1178
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1179
    const-string v6, "_movegroup"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    const-string v6, "_showsender"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1181
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1183
    if-eqz v3, :cond_4

    .line 1184
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1185
    const-string v6, "_outfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1186
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1187
    .restart local v5       #where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1190
    .end local v5           #where:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1191
    const-string v6, "_undecodename"

    const v7, 0x7f0b01d3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v6, "_decodename"

    const v7, 0x7f0b01d3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v6, "_shortname"

    const v7, 0x7f0b01d3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string v6, "_serverfolder"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1196
    const-string v6, "_movegroup"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1197
    const-string v6, "_showsender"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1198
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1200
    if-eqz v3, :cond_5

    .line 1201
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1202
    const-string v6, "_sentfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1203
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1204
    .restart local v5       #where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1328
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v5           #where:Ljava/lang/String;
    :cond_5
    :goto_0
    return-void

    .line 1207
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_6
    if-ne p3, v10, :cond_5

    .line 1208
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1209
    const-string v6, "_undecodename"

    const-string v7, "INBOX"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v6, "_decodename"

    const-string v7, "INBOX"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v6, "_shortname"

    const v7, 0x7f0b01ce

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v6, "_serverfolder"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    const-string v6, "_defaultfolder"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1214
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1215
    const-string v6, "_movegroup"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1216
    const-string v6, "_showsender"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1217
    const-string v6, "_default_sync"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1218
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1220
    .restart local v3       #uri:Landroid/net/Uri;
    if-eqz v3, :cond_7

    .line 1221
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1222
    const-string v6, "_defaultfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1223
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1224
    .restart local v5       #where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1227
    .end local v5           #where:Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1228
    const v6, 0x7f0b01d2

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1231
    .local v0, IMAPStr:Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v6, "IMAP-mailbox-name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #IMAPStr:Ljava/lang/String;
    .local v1, IMAPStr:Ljava/lang/String;
    move-object v0, v1

    .line 1235
    .end local v1           #IMAPStr:Ljava/lang/String;
    .restart local v0       #IMAPStr:Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string v6, "_undecodename"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v6, "_decodename"

    const v7, 0x7f0b01d2

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v6, "_shortname"

    const v7, 0x7f0b01d2

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string v6, "_serverfolder"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1239
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1240
    const-string v6, "_movegroup"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1241
    const-string v6, "_showsender"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1242
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1244
    if-eqz v3, :cond_8

    .line 1245
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1246
    const-string v6, "_trashfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1247
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1248
    .restart local v5       #where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1251
    .end local v5           #where:Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1252
    const v6, 0x7f0b01d1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 1255
    :try_start_3
    new-instance v1, Ljava/lang/String;

    const-string v6, "IMAP-mailbox-name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v0           #IMAPStr:Ljava/lang/String;
    .restart local v1       #IMAPStr:Ljava/lang/String;
    move-object v0, v1

    .line 1259
    .end local v1           #IMAPStr:Ljava/lang/String;
    .restart local v0       #IMAPStr:Ljava/lang/String;
    :goto_2
    :try_start_4
    const-string v6, "_undecodename"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v6, "_decodename"

    const v7, 0x7f0b01d1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v6, "_shortname"

    const v7, 0x7f0b01d1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v6, "_serverfolder"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1263
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1264
    const-string v6, "_movegroup"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1265
    const-string v6, "_showsender"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1266
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1268
    if-eqz v3, :cond_9

    .line 1269
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1270
    const-string v6, "_draftfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1271
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1272
    .restart local v5       #where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1275
    .end local v5           #where:Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1276
    const v6, 0x7f0b01d4

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 1279
    :try_start_5
    new-instance v1, Ljava/lang/String;

    const-string v6, "IMAP-mailbox-name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v0           #IMAPStr:Ljava/lang/String;
    .restart local v1       #IMAPStr:Ljava/lang/String;
    move-object v0, v1

    .line 1283
    .end local v1           #IMAPStr:Ljava/lang/String;
    .restart local v0       #IMAPStr:Ljava/lang/String;
    :goto_3
    :try_start_6
    const-string v6, "_undecodename"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string v6, "_decodename"

    const v7, 0x7f0b01d4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string v6, "_shortname"

    const v7, 0x7f0b01d4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v6, "_serverfolder"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1287
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1288
    const-string v6, "_movegroup"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    const-string v6, "_showsender"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1290
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1292
    if-eqz v3, :cond_a

    .line 1293
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1294
    const-string v6, "_outfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1295
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1296
    .restart local v5       #where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1299
    .end local v5           #where:Ljava/lang/String;
    :cond_a
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1300
    const v6, 0x7f0b01d3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v0

    .line 1303
    :try_start_7
    new-instance v1, Ljava/lang/String;

    const-string v6, "IMAP-mailbox-name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .end local v0           #IMAPStr:Ljava/lang/String;
    .restart local v1       #IMAPStr:Ljava/lang/String;
    move-object v0, v1

    .line 1307
    .end local v1           #IMAPStr:Ljava/lang/String;
    .restart local v0       #IMAPStr:Ljava/lang/String;
    :goto_4
    :try_start_8
    const-string v6, "_undecodename"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v6, "_decodename"

    const v7, 0x7f0b01d3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v6, "_shortname"

    const v7, 0x7f0b01d3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v6, "_serverfolder"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1311
    const-string v6, "_account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1312
    const-string v6, "_movegroup"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1313
    const-string v6, "_showsender"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1314
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v2, v6, v4}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1316
    if-eqz v3, :cond_5

    .line 1317
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1318
    const-string v6, "_sentfolderId"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1319
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1320
    .restart local v5       #where:Ljava/lang/String;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v4, v5, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 1323
    .end local v0           #IMAPStr:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v5           #where:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 1325
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 1305
    .restart local v0       #IMAPStr:Ljava/lang/String;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v6

    goto :goto_4

    .line 1281
    :catch_3
    move-exception v6

    goto/16 :goto_3

    .line 1257
    :catch_4
    move-exception v6

    goto/16 :goto_2

    .line 1233
    :catch_5
    move-exception v6

    goto/16 :goto_1
.end method

.method public static isAccountDelProhibited(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/4 v2, 0x0

    .line 1582
    const-string v1, "AccountDelProhibition"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1583
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isHuxOnDevice(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1560
    invoke-static {p0}, Lcom/htc/android/mail/Account;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1562
    const/4 v0, 0x1

    .line 1564
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final markAllForImmediateFetch()V
    .locals 7

    .prologue
    .line 223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 224
    .local v3, nonce:J
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getAccountIDs()Landroid/database/Cursor;

    move-result-object v0

    .line 226
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 227
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 230
    .local v1, id:J
    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/MailProvider;->updateAccountPollTime(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 234
    .end local v1           #id:J
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v5

    .line 234
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_2
    return-void
.end method

.method public static notify139SimChanged(Landroid/content/Context;)I
    .locals 6
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-static {}, Lcom/htc/android/mail/Account;->find139Account()J

    move-result-wide v1

    .line 538
    .local v1, id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_0

    .line 544
    :goto_0
    return v3

    .line 541
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 542
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "_del"

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    const-string v4, "_defaultaccount"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    invoke-static {p0, v1, v2, v0}, Lcom/htc/android/mail/Account;->updateAccountByContentValues(Landroid/content/Context;JLandroid/content/ContentValues;)I

    move-result v3

    goto :goto_0
.end method

.method public static notifyAccountChanged(Landroid/content/Context;J)V
    .locals 1
    .parameter "c"
    .parameter "accountid"

    .prologue
    .line 486
    sget-object v0, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountChange()V

    .line 487
    sget-object v0, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountID(J)V

    .line 488
    sget-object v0, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 489
    return-void
.end method

.method public static removeAccountDelProhibition(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 1575
    const-string v1, "AccountDelProhibition"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1576
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1577
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1578
    const/4 v1, 0x1

    return v1
.end method

.method public static saveAvailableEndpoints(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;)V
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    .line 1539
    const-string v3, "availableEndpoints"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1540
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;

    .line 1544
    .local v1, endPoint:Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;
    iget-object v3, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    iget v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "providerId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    iget v5, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1548
    .end local v1           #endPoint:Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/htc/android/mail/Account;->setVerifyDeviceInfoUpdateTime(Landroid/content/Context;J)V

    .line 1550
    return-void
.end method

.method public static saveExchangeSetting(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;)V
    .locals 3
    .parameter "context"
    .parameter "profileInfo"

    .prologue
    .line 1441
    const-string v1, "exchangeAccountSetting"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1442
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "email"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeEmail:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1443
    const-string v1, "server"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeServer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1444
    const-string v1, "user"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeUser:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1445
    const-string v1, "nickName"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeNickName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1446
    const-string v1, "domain"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeDomain:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1448
    const-string v1, "daysToSync"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeDaysToSync:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1449
    const-string v1, "fetchFreq"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeFetchFreq:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1451
    const-string v1, "secureFlag"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-boolean v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeSecureFlag:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1452
    const-string v1, "verifyCertFlag"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-boolean v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeVerifyCertFlag:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1453
    const-string v1, "ABSyncFlag"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-boolean v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeABSyncFlag:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1454
    const-string v1, "CalSyncFlag"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-boolean v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeCalSyncFlag:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1455
    const-string v1, "MailSyncFlag"

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-boolean v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeMailSyncFlag:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1458
    return-void
.end method

.method public static setHuxNeedSyncAfterSyncAccount(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isNeed"

    .prologue
    .line 1390
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1391
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isHuxNeedSyncAfterSyncAccount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1393
    return-void
.end method

.method public static setIsExchangeSaved(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isExchangeSaved"

    .prologue
    .line 1430
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1431
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isExchangeSaved"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1432
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1433
    return-void
.end method

.method public static setNeedSyncHUXAccount(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isNeed"

    .prologue
    .line 1401
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1402
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isNeedSyncHUXAccount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1403
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1404
    return-void
.end method

.method public static setPIN(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "pin"

    .prologue
    .line 1368
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1369
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "vzw_hux_pin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1370
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1371
    return-void
.end method

.method private final setPollQuantum()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->setPollQuantum()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "token"

    .prologue
    .line 1379
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1380
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "vzw_hux_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1382
    return-void
.end method

.method public static setTokenExpiry(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "expiry"

    .prologue
    .line 1419
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1420
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "vzw_hux_token_expiry"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1421
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1422
    return-void
.end method

.method public static setVerifyDeviceInfoUpdateTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "timeStamp"

    .prologue
    .line 1528
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1529
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "hux_verifyDeviceInfoupdateTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1531
    return-void
.end method

.method private static updateAccountByContentValues(Landroid/content/Context;JLandroid/content/ContentValues;)I
    .locals 6
    .parameter "c"
    .parameter "id"
    .parameter "cv"

    .prologue
    .line 570
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, p3, v4, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 571
    .local v1, value:I
    invoke-static {p0}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 572
    if-lez v1, :cond_0

    const-string v2, "_del"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_del"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcut(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v1           #value:I
    :cond_0
    :goto_0
    return v1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final updateNextFetchTimes(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 242
    .local v6, cr:Landroid/content/ContentResolver;
    const-string v9, "mail"

    invoke-virtual {v6, v9}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v5

    .line 244
    .local v5, cp:Landroid/content/IContentProvider;
    :try_start_0
    const-string v9, "GET_ACCOUNTS"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v5, v9, v10, v11}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 245
    .local v4, bundle:Landroid/os/Bundle;
    const-string v9, "accounts"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, [Lcom/htc/android/mail/Account;

    move-object v0, v9

    check-cast v0, [Lcom/htc/android/mail/Account;

    move-object v2, v0

    .line 246
    .local v2, accounts:[Lcom/htc/android/mail/Account;
    move-object v3, v2

    .local v3, arr$:[Lcom/htc/android/mail/Account;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v1, v3, v7

    .line 247
    .local v1, account:Lcom/htc/android/mail/Account;
    if-nez v1, :cond_0

    .line 246
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->updateFetchTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 250
    .end local v1           #account:Lcom/htc/android/mail/Account;
    .end local v2           #accounts:[Lcom/htc/android/mail/Account;
    .end local v3           #arr$:[Lcom/htc/android/mail/Account;
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :catch_0
    move-exception v9

    .line 253
    :cond_1
    return-void
.end method


# virtual methods
.method public alwaysbccMyself()I
    .locals 3

    .prologue
    .line 1598
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->alwaysbccMyself()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public askBeforeDelete()I
    .locals 3

    .prologue
    .line 1628
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->askBeforeDelete()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public askBeforeDelete(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1605
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 1606
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 1607
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v2, v3

    .line 1608
    .local v0, a:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->askBeforeDelete(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1615
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    :goto_1
    return v5

    .line 1607
    .restart local v0       #a:Lcom/htc/android/mail/Account;
    .restart local v1       #accounts:[Lcom/htc/android/mail/Account;
    .restart local v2       #arr$:[Lcom/htc/android/mail/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1613
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->askBeforeDelete()I

    move-result v7

    if-eq v7, v5, :cond_0

    move v5, v6

    goto :goto_1

    .restart local v1       #accounts:[Lcom/htc/android/mail/Account;
    .restart local v2       #arr$:[Lcom/htc/android/mail/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_3
    move v5, v6

    .line 1615
    goto :goto_1
.end method

.method public clearMails()Z
    .locals 3

    .prologue
    .line 1644
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->clearMails()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1645
    :catch_0
    move-exception v0

    .line 1646
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearPushMailSyncError(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2881
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    .line 2882
    .local v0, protocol:I
    packed-switch v0, :pswitch_data_0

    .line 2887
    :goto_0
    return-void

    .line 2884
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->clearPushMailSyncError(Landroid/content/Context;J)V

    goto :goto_0

    .line 2882
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public commit(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2737
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2738
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2739
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2740
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 2745
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->commit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2749
    return-void

    .line 2746
    :catch_0
    move-exception v1

    .line 2747
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public commitMailboxChanges()V
    .locals 3

    .prologue
    .line 2722
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->commitMailboxChanges()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2726
    return-void

    .line 2723
    :catch_0
    move-exception v0

    .line 2724
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public containsExchange(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1335
    :goto_0
    return v0

    .line 1332
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1333
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool$Proxy;->containsExchange(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 1335
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete()Z
    .locals 3

    .prologue
    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->delete()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteFromServer()I
    .locals 3

    .prologue
    .line 1660
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->deleteFromServer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1661
    :catch_0
    move-exception v0

    .line 1662
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2926
    const/4 v0, 0x0

    return v0
.end method

.method public enableSDsave()I
    .locals 3

    .prologue
    .line 1694
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->enableSDsave()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1695
    :catch_0
    move-exception v0

    .line 1696
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCheckFreq(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 1799
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1800
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1801
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 1802
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v2

    .line 1807
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getCheckFreq()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1808
    :catch_0
    move-exception v1

    .line 1809
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCheckFreqPosition(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 1717
    const/4 v0, 0x0

    .line 1718
    .local v0, position:I
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1719
    packed-switch p1, :pswitch_data_0

    .line 1782
    :goto_0
    return v0

    .line 1721
    :pswitch_0
    const/4 v0, 0x0

    .line 1722
    goto :goto_0

    .line 1724
    :pswitch_1
    const/4 v0, 0x1

    .line 1725
    goto :goto_0

    .line 1727
    :pswitch_2
    const/4 v0, 0x2

    .line 1728
    goto :goto_0

    .line 1730
    :pswitch_3
    const/4 v0, 0x3

    .line 1731
    goto :goto_0

    .line 1733
    :pswitch_4
    const/4 v0, 0x4

    .line 1734
    goto :goto_0

    .line 1736
    :pswitch_5
    const/4 v0, 0x5

    .line 1737
    goto :goto_0

    .line 1739
    :pswitch_6
    const/4 v0, 0x6

    .line 1740
    goto :goto_0

    .line 1742
    :pswitch_7
    const/4 v0, 0x7

    .line 1743
    goto :goto_0

    .line 1745
    :pswitch_8
    const/16 v0, 0x8

    .line 1746
    goto :goto_0

    .line 1748
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 1752
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1754
    :pswitch_a
    const/4 v0, 0x0

    .line 1755
    goto :goto_0

    .line 1757
    :pswitch_b
    const/4 v0, 0x1

    .line 1758
    goto :goto_0

    .line 1760
    :pswitch_c
    const/4 v0, 0x2

    .line 1761
    goto :goto_0

    .line 1763
    :pswitch_d
    const/4 v0, 0x3

    .line 1764
    goto :goto_0

    .line 1766
    :pswitch_e
    const/4 v0, 0x4

    .line 1767
    goto :goto_0

    .line 1769
    :pswitch_f
    const/4 v0, 0x5

    .line 1770
    goto :goto_0

    .line 1772
    :pswitch_10
    const/4 v0, 0x6

    .line 1773
    goto :goto_0

    .line 1775
    :pswitch_11
    const/4 v0, 0x7

    .line 1776
    goto :goto_0

    .line 1778
    :pswitch_12
    const/16 v0, 0x8

    goto :goto_0

    .line 1719
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
    .end packed-switch

    .line 1752
    :pswitch_data_1
    .packed-switch 0x0
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

.method public getColorGroupIdx()I
    .locals 3

    .prologue
    .line 1815
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getColorGroupIdx()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getColorIdx()I
    .locals 3

    .prologue
    .line 1823
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getColorIdx()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getContactGroup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1839
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getContactGroup()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1840
    :catch_0
    move-exception v0

    .line 1841
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDefaultFolderId()J
    .locals 3

    .prologue
    .line 1847
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getDefaultFolderId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDelStatus()I
    .locals 3

    .prologue
    .line 1863
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getDelStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1864
    :catch_0
    move-exception v0

    .line 1865
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1871
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getDesc()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1872
    :catch_0
    move-exception v0

    .line 1873
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1349
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1350
    const v0, 0x7f0b02d8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1352
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getDesc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDownloadMessageWhenScroll()Z
    .locals 3

    .prologue
    .line 1678
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getDownloadMessageWhenScroll()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDraftFolderId()J
    .locals 3

    .prologue
    .line 1879
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getDraftFolderId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEASDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2252
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getEASDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2253
    :catch_0
    move-exception v0

    .line 2254
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEasOptions(Landroid/content/Context;)Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1495
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return-object v5

    .line 1496
    :cond_1
    const/4 v6, 0x0

    .line 1498
    .local v6, prefReader:Ljava/io/FileReader;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 1499
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "eas_opt.prefs"

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1500
    .local v4, optionPrefFile:Ljava/io/File;
    new-instance v6, Ljava/io/FileReader;

    .end local v6           #prefReader:Ljava/io/FileReader;
    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1506
    .restart local v6       #prefReader:Ljava/io/FileReader;
    const-wide/16 v2, 0x0

    .line 1508
    .local v2, easSvrProtocol:D
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v2

    .line 1512
    new-instance v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;

    invoke-direct {v5, v2, v3}, Lcom/htc/android/mail/eassvc/pim/EASOptions;-><init>(D)V

    .line 1515
    .local v5, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v6, v5, v7}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getSyncOptions(Ljava/io/FileReader;Lcom/htc/android/mail/eassvc/pim/EASOptions;Ljava/lang/String;)Z

    .line 1516
    if-eqz v6, :cond_0

    .line 1517
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 1519
    :catch_0
    move-exception v1

    .line 1520
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "Account"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getEasOptions, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    .end local v0           #dataFilePath:Ljava/io/File;
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #easSvrProtocol:D
    .end local v4           #optionPrefFile:Ljava/io/File;
    .end local v5           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v6           #prefReader:Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .line 1502
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "Account"

    const-string v8, "getEasOptions: file not found"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1509
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #dataFilePath:Ljava/io/File;
    .restart local v2       #easSvrProtocol:D
    .restart local v4       #optionPrefFile:Ljava/io/File;
    .restart local v6       #prefReader:Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 1510
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 1521
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :catch_3
    move-exception v1

    .line 1522
    .local v1, e:Ljava/io/IOException;
    const-string v7, "Account"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getEasOptions, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEasSvrProtocol()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1887
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getEasSvrProtocol()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1888
    :catch_0
    move-exception v0

    .line 1889
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEditAccountActivity()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2913
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 2914
    const-string v1, "com.htc.android.mail.huxservice.HuxEditAccount"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2921
    :goto_0
    return-object v1

    .line 2916
    :cond_0
    const-string v1, "com.htc.android.mail.ecEditAccount"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2918
    :catch_0
    move-exception v0

    .line 2919
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v1, "Account"

    const-string v2, "catch exception"

    invoke-static {v1, v2, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2921
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1895
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getEmailAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1896
    :catch_0
    move-exception v0

    .line 1897
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExchangeLargestProtocol(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v0

    .line 1343
    :goto_0
    return-object v0

    .line 1340
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1341
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool$Proxy;->getExchangeLargestProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1343
    :cond_1
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public getFetchLongerDate(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1363
    const-string v1, "account"

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1364
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch_longer_date_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getFetchMailDays(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 1902
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1903
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1904
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 1905
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getFetchMailDays(Landroid/content/Context;)I

    move-result v2

    .line 1910
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getFetchMailDays()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1911
    :catch_0
    move-exception v1

    .line 1912
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFetchMailDaysIndex(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 1930
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1931
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1932
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 1933
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getFetchMailDaysIndex(Landroid/content/Context;)I

    move-result v2

    .line 1938
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getFetchMailDaysIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1939
    :catch_0
    move-exception v1

    .line 1940
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFetchMailNum(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 1945
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1946
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1947
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 1948
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getFetchMailNum(Landroid/content/Context;)I

    move-result v2

    .line 1953
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getFetchMailNum()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1954
    :catch_0
    move-exception v1

    .line 1955
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFetchMailNumIndex(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 1973
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1974
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1975
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 1976
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getFetchMailNumIndex(Landroid/content/Context;)I

    move-result v2

    .line 1981
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getFetchMailNumIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1982
    :catch_0
    move-exception v1

    .line 1983
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFetchMailType(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2001
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2002
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2003
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2004
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v2

    .line 2009
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getFetchMailType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2010
    :catch_0
    move-exception v1

    .line 2011
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFontsize()I
    .locals 3

    .prologue
    .line 2025
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getFontsize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2026
    :catch_0
    move-exception v0

    .line 2027
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getId()J
    .locals 3

    .prologue
    .line 2033
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 2034
    :catch_0
    move-exception v0

    .line 2035
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInPort()I
    .locals 3

    .prologue
    .line 2041
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getInPort()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2042
    :catch_0
    move-exception v0

    .line 2043
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2049
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getInServer()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2050
    :catch_0
    move-exception v0

    .line 2051
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLastFetchTagsTime()J
    .locals 3

    .prologue
    .line 2753
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getLastFetchTagsTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 2754
    :catch_0
    move-exception v0

    .line 2755
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLastupdatetime()J
    .locals 3

    .prologue
    .line 2065
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getLastupdatetime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 2066
    :catch_0
    move-exception v0

    .line 2067
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMailboxs()Lcom/htc/android/mail/Mailboxs;
    .locals 3

    .prologue
    .line 2073
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getMailboxs()Lcom/htc/android/mail/Mailboxs;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2074
    :catch_0
    move-exception v0

    .line 2075
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMessageTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, table:Ljava/lang/String;
    const-string v0, "messages"

    .line 182
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2081
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutPort()I
    .locals 3

    .prologue
    .line 2105
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getOutPort()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2106
    :catch_0
    move-exception v0

    .line 2107
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2089
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getOutServer()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2090
    :catch_0
    move-exception v0

    .line 2091
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutpassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2113
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getOutpassword()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2114
    :catch_0
    move-exception v0

    .line 2115
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutuserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2129
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getOutuserName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2130
    :catch_0
    move-exception v0

    .line 2131
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2137
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2138
    :catch_0
    move-exception v0

    .line 2139
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPeakDays(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2157
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2158
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2159
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2160
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getPeakDays(Landroid/content/Context;)I

    move-result v2

    .line 2165
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getPeakDays()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2166
    :catch_0
    move-exception v1

    .line 2167
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPeakTimeEnd(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2185
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2186
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2187
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2188
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getPeakTimeEnd(Landroid/content/Context;)I

    move-result v2

    .line 2193
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getPeakTimeEnd()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2194
    :catch_0
    move-exception v1

    .line 2195
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPeakTimeStart(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2213
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2214
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2215
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2216
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getPeakTimeStart(Landroid/content/Context;)I

    move-result v2

    .line 2221
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getPeakTimeStart()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2222
    :catch_0
    move-exception v1

    .line 2223
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPollFrequencyLabels()I
    .locals 2

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1702
    const v0, 0x7f060005

    .line 1704
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f060003

    goto :goto_0
.end method

.method public getPollFrequencyValues()I
    .locals 2

    .prologue
    .line 1709
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1710
    const v0, 0x7f060006

    .line 1712
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f060004

    goto :goto_0
.end method

.method public getPollQuantum(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2228
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2229
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2230
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2231
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getPollQuantum(Landroid/content/Context;)I

    move-result v2

    .line 2236
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getPollQuantum()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2237
    :catch_0
    move-exception v1

    .line 2238
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPreviewLineNum(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 2698
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 2699
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 2700
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    const/4 v5, 0x0

    .line 2701
    .local v5, maxNum:I
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 2702
    .local v0, a:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getPreviewLineNum(Landroid/content/Context;)I

    move-result v6

    if-le v6, v5, :cond_0

    .line 2703
    invoke-direct {v0}, Lcom/htc/android/mail/Account;->getPreviewLineNum()I

    move-result v5

    .line 2701
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2708
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #maxNum:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/Account;->getPreviewLineNum()I

    move-result v5

    :cond_2
    return v5
.end method

.method public getProtocol()I
    .locals 3

    .prologue
    .line 2244
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getProtocol()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2245
    :catch_0
    move-exception v0

    .line 2246
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2260
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getProvider()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2261
    :catch_0
    move-exception v0

    .line 2262
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProviderGroup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2268
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getProviderGroup()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2269
    :catch_0
    move-exception v0

    .line 2270
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProviderid()I
    .locals 3

    .prologue
    .line 2276
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getProviderid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2277
    :catch_0
    move-exception v0

    .line 2278
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSentFolderId()J
    .locals 3

    .prologue
    .line 2284
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getSentFolderId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 2285
    :catch_0
    move-exception v0

    .line 2286
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2308
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getSignature()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2309
    :catch_0
    move-exception v0

    .line 2310
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSizeLimit(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2315
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2316
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2317
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2318
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getSizeLimit(Landroid/content/Context;)I

    move-result v2

    .line 2323
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getSizeLimit()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2324
    :catch_0
    move-exception v1

    .line 2325
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSizeLimitIndex(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2343
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2344
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2345
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2346
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getSizeLimitIndex(Landroid/content/Context;)I

    move-result v2

    .line 2351
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getSizeLimitIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2352
    :catch_0
    move-exception v1

    .line 2353
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSortBy()I
    .locals 3

    .prologue
    .line 2367
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getSortBy()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2368
    :catch_0
    move-exception v0

    .line 2369
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSortColumn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2383
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getSortColumn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2384
    :catch_0
    move-exception v0

    .line 2385
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2399
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getSortOrder()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2400
    :catch_0
    move-exception v0

    .line 2401
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSqlWhereForSendingMail(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2790
    const-string v1, ""

    .line 2791
    .local v1, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2792
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    invoke-static {p1, v2, v3}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v0

    .line 2793
    .local v0, mailboxIdSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_mailboxId IN (%s) AND _del = \'-1\' AND _done = 1 AND _retryCount >= 0"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2798
    .end local v0           #mailboxIdSeq:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2795
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_account = \'%d\' AND _mailboxId = \'%d\' AND _del = \'-1\' AND _done = 1 AND _retryCount >= 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSyncSchedulePeakOff(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2419
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2420
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2421
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2422
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOff(Landroid/content/Context;)I

    move-result v2

    .line 2427
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getSyncSchedulePeakOff()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2428
    :catch_0
    move-exception v1

    .line 2429
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSyncSchedulePeakOn(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2447
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2448
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2449
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 2450
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOn(Landroid/content/Context;)I

    move-result v2

    .line 2455
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2}, Lcom/htc/android/mail/account/IAccount;->getSyncSchedulePeakOn()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2456
    :catch_0
    move-exception v1

    .line 2457
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getTrashFolderId()J
    .locals 3

    .prologue
    .line 2463
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getTrashFolderId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 2464
    :catch_0
    move-exception v0

    .line 2465
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUseSSLin()I
    .locals 3

    .prologue
    .line 2511
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getUseSSLin()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2512
    :catch_0
    move-exception v0

    .line 2513
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUseSSLout()I
    .locals 3

    .prologue
    .line 2471
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getUseSSLout()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2472
    :catch_0
    move-exception v0

    .line 2473
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUseSignature()I
    .locals 3

    .prologue
    .line 2487
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getUseSignature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2488
    :catch_0
    move-exception v0

    .line 2489
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2503
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->getUserName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2504
    :catch_0
    move-exception v0

    .line 2505
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public handlePushMailSyncError(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2784
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2785
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->handlePushMailSyncError(Landroid/content/Context;J)V

    .line 2787
    :cond_0
    return-void
.end method

.method public hasSettingAlwaysBccMe()Z
    .locals 2

    .prologue
    .line 2904
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2905
    const/4 v0, 0x0

    .line 2908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasSettingDeleteMailOnServer()Z
    .locals 2

    .prologue
    .line 2890
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    .line 2891
    .local v0, protocol:I
    packed-switch v0, :pswitch_data_0

    .line 2896
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2894
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2891
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasSettingSyncDeleteditemsFromServer()Z
    .locals 2

    .prologue
    .line 2813
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    .line 2814
    .local v0, protocol:I
    packed-switch v0, :pswitch_data_0

    .line 2819
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2817
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2814
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isAdditionalSyncWhenErrorEnabled()Z
    .locals 3

    .prologue
    .line 2777
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->isAdditionalSyncWhenErrorEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2778
    :catch_0
    move-exception v0

    .line 2779
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isChanged()Z
    .locals 3

    .prologue
    .line 2730
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->isChanged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2731
    :catch_0
    move-exception v0

    .line 2732
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isDefaultaccount()I
    .locals 3

    .prologue
    .line 2527
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->isDefaultaccount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2528
    :catch_0
    move-exception v0

    .line 2529
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isExchange()Z
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIMAP4()Z
    .locals 3

    .prologue
    .line 2535
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->isIMAP4()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2536
    :catch_0
    move-exception v0

    .line 2537
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public needSmtpauth()I
    .locals 3

    .prologue
    .line 2543
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->needSmtpauth()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2544
    :catch_0
    move-exception v0

    .line 2545
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 2948
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/account/IAccount$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/account/IAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    .line 2949
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->refresh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public refreshMailOpenFolder()Z
    .locals 3

    .prologue
    .line 2594
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->refreshMailOpenFolder()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2595
    :catch_0
    move-exception v0

    .line 2596
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public refreshMailOpenFolder(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 2550
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 2551
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 2552
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_9

    aget-object v0, v2, v3

    .line 2553
    .local v0, a:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->refreshMailOpenFolder()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->refreshMailOpenFolder()Z

    move-result v5

    .line 2580
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return v5

    .line 2552
    .restart local v0       #a:Lcom/htc/android/mail/Account;
    .restart local v1       #accounts:[Lcom/htc/android/mail/Account;
    .restart local v2       #arr$:[Lcom/htc/android/mail/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2556
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 2557
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->refreshMailOpenFolder()Z

    move-result v5

    goto :goto_1

    .line 2558
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    .line 2559
    const-string v5, "Yahoo"

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2560
    sget-object v5, Lcom/htc/android/mail/Mail;->HUX_YAHOO_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 2562
    :cond_4
    const-string v5, "AOL"

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2563
    sget-object v5, Lcom/htc/android/mail/Mail;->HUX_AOL_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 2565
    :cond_5
    const-string v5, "MSN"

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2566
    sget-object v5, Lcom/htc/android/mail/Mail;->HUX_MSN_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 2568
    :cond_6
    const-string v5, "Google"

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2569
    sget-object v5, Lcom/htc/android/mail/Mail;->HUX_GOOGLE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 2572
    :cond_7
    const-string v5, "com.htc.android.mail"

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    .line 2576
    :cond_8
    const-string v5, "com.htc.android.mail"

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    .line 2580
    .restart local v1       #accounts:[Lcom/htc/android/mail/Account;
    .restart local v2       #arr$:[Lcom/htc/android/mail/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method public reloadMailboxs()V
    .locals 3

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->reloadMailboxs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replyWithText()I
    .locals 3

    .prologue
    .line 2610
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->replyWithText()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2611
    :catch_0
    move-exception v0

    .line 2612
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resetSyncAlarm()V
    .locals 3

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->resetSyncAlarm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAdditionalSyncWhenErrorEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 2769
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setAdditionalSyncWhenErrorEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2773
    return-void

    .line 2770
    :catch_0
    move-exception v0

    .line 2771
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAlwaysbccMyself(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1590
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setAlwaysbccMyself(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    return-void

    .line 1591
    :catch_0
    move-exception v0

    .line 1592
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAskBeforeDelete(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1620
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setAskBeforeDelete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    return-void

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCheckFreq(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 1786
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1787
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1788
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setCheckFreq(Landroid/content/Context;I)V

    .line 1792
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setCheckFreq(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    return-void

    .line 1793
    :catch_0
    move-exception v1

    .line 1794
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setClearMails(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1636
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setClearMails(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    return-void

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setContactGroup(Ljava/lang/String;)V
    .locals 3
    .parameter "contactGroup"

    .prologue
    .line 1831
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setContactGroup(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    return-void

    .line 1832
    :catch_0
    move-exception v0

    .line 1833
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDefaultaccount(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2519
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setDefaultaccount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2523
    return-void

    .line 2520
    :catch_0
    move-exception v0

    .line 2521
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDelStatus(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1855
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setDelStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    return-void

    .line 1856
    :catch_0
    move-exception v0

    .line 1857
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDeleteFromServer(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1652
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setDeleteFromServer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    return-void

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDownloadMessageWhenScroll(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1668
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getDownloadMessageWhenScroll()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1670
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setDownloadMessageWhenScroll(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setEASDomain(Ljava/lang/String;)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2292
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setEASDomain(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2296
    return-void

    .line 2293
    :catch_0
    move-exception v0

    .line 2294
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setEmailNotifications(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2618
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setEmailNotifications(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2622
    return-void

    .line 2619
    :catch_0
    move-exception v0

    .line 2620
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setEnableSDsave(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1686
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setEnableSDsave(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    return-void

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFetchLongerDate(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1357
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1358
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch_longer_date_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1360
    return-void
.end method

.method public setFetchMailDaysIndex(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 1917
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1918
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1919
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setFetchMailDaysIndex(Landroid/content/Context;I)V

    .line 1923
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setFetchMailDaysIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    return-void

    .line 1924
    :catch_0
    move-exception v1

    .line 1925
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFetchMailNumIndex(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 1960
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1961
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1962
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setFetchMailNumIndex(Landroid/content/Context;I)V

    .line 1966
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setFetchMailNumIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1970
    return-void

    .line 1967
    :catch_0
    move-exception v1

    .line 1968
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFetchMailType(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 1988
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1989
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1990
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setFetchMailType(Landroid/content/Context;I)V

    .line 1994
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setFetchMailType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    return-void

    .line 1995
    :catch_0
    move-exception v1

    .line 1996
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFontsize(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2017
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setFontsize(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2021
    return-void

    .line 2018
    :catch_0
    move-exception v0

    .line 2019
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLastFetchTagsTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 2761
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1, p2}, Lcom/htc/android/mail/account/IAccount;->setLastFetchTagsTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2765
    return-void

    .line 2762
    :catch_0
    move-exception v0

    .line 2763
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLastupdatetime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 2057
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1, p2}, Lcom/htc/android/mail/account/IAccount;->setLastupdatetime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2061
    return-void

    .line 2058
    :catch_0
    move-exception v0

    .line 2059
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMailboxDefaultSyncEnabled(JZ)V
    .locals 3
    .parameter "mailboxId"
    .parameter "enabled"

    .prologue
    .line 2714
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/android/mail/account/IAccount;->setMailboxDefaultSyncEnabled(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2718
    return-void

    .line 2715
    :catch_0
    move-exception v0

    .line 2716
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOutPort(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2097
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setOutPort(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2101
    return-void

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOutuserName(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2121
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setOutuserName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2125
    return-void

    .line 2122
    :catch_0
    move-exception v0

    .line 2123
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPeakDays(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2144
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2145
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2146
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setPeakDays(Landroid/content/Context;I)V

    .line 2150
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setPeakDays(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2154
    return-void

    .line 2151
    :catch_0
    move-exception v1

    .line 2152
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setPeakTimeEnd(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2172
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2173
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2174
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setPeakTimeEnd(Landroid/content/Context;I)V

    .line 2178
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setPeakTimeEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2182
    return-void

    .line 2179
    :catch_0
    move-exception v1

    .line 2180
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setPeakTimeStart(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2200
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2201
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2202
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setPeakTimeStart(Landroid/content/Context;I)V

    .line 2206
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setPeakTimeStart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2210
    return-void

    .line 2207
    :catch_0
    move-exception v1

    .line 2208
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setPreviewLineNum(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2683
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setPreviewLineNum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2687
    return-void

    .line 2684
    :catch_0
    move-exception v0

    .line 2685
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setRefreshMailOpenFolder(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 2584
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2590
    :goto_0
    return-void

    .line 2586
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setRefreshMailOpenFolder(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2587
    :catch_0
    move-exception v0

    .line 2588
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReplyWithText(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2602
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setReplyWithText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2606
    return-void

    .line 2603
    :catch_0
    move-exception v0

    .line 2604
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2300
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setSignature(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    return-void

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSizeLimitIndex(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "index"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2330
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2331
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2332
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setSizeLimitIndex(Landroid/content/Context;I)V

    .line 2336
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setSizeLimitIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    return-void

    .line 2337
    :catch_0
    move-exception v1

    .line 2338
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized setSortBy(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2359
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setSortBy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2363
    monitor-exit p0

    return-void

    .line 2360
    :catch_0
    move-exception v0

    .line 2361
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2359
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSortColumn(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2375
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setSortColumn(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2379
    return-void

    .line 2376
    :catch_0
    move-exception v0

    .line 2377
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2391
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setSortOrder(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2395
    return-void

    .line 2392
    :catch_0
    move-exception v0

    .line 2393
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSound(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2634
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setSound(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    return-void

    .line 2635
    :catch_0
    move-exception v0

    .line 2636
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSyncSchedulePeakOff(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2406
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2407
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2408
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setSyncSchedulePeakOff(Landroid/content/Context;I)V

    .line 2412
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setSyncSchedulePeakOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    return-void

    .line 2413
    :catch_0
    move-exception v1

    .line 2414
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSyncSchedulePeakOn(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const-wide v4, 0x7ffffffffffffffdL

    .line 2434
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2435
    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2436
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Account;->setSyncSchedulePeakOn(Landroid/content/Context;I)V

    .line 2440
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v2, p2}, Lcom/htc/android/mail/account/IAccount;->setSyncSchedulePeakOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2444
    return-void

    .line 2441
    :catch_0
    move-exception v1

    .line 2442
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSyncWithServer(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2651
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setSyncWithServer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2655
    return-void

    .line 2652
    :catch_0
    move-exception v0

    .line 2653
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUseSignature(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2479
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setUseSignature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2483
    return-void

    .line 2480
    :catch_0
    move-exception v0

    .line 2481
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2495
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setUserName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    return-void

    .line 2496
    :catch_0
    move-exception v0

    .line 2497
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVibrate(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2667
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/account/IAccount;->setVibrate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2671
    return-void

    .line 2668
    :catch_0
    move-exception v0

    .line 2669
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showEmailNotifications()I
    .locals 3

    .prologue
    .line 2626
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->showEmailNotifications()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2627
    :catch_0
    move-exception v0

    .line 2628
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sound()I
    .locals 3

    .prologue
    .line 2643
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->sound()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2644
    :catch_0
    move-exception v0

    .line 2645
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public supportDualFetchMode()Z
    .locals 2

    .prologue
    .line 2835
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    .line 2836
    .local v0, protocol:I
    packed-switch v0, :pswitch_data_0

    .line 2841
    :pswitch_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2839
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2836
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public supportHuxTag(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2866
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 2867
    const/4 v4, 0x6

    invoke-static {p1, v4}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccountCount(Landroid/content/Context;I)I

    move-result v0

    .line 2868
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2876
    .end local v0           #count:I
    :goto_0
    :pswitch_0
    return v2

    .restart local v0       #count:I
    :cond_0
    move v2, v3

    .line 2868
    goto :goto_0

    .line 2871
    .end local v0           #count:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    .line 2872
    .local v1, protocol:I
    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 2876
    goto :goto_0

    .line 2872
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public supportProviderIconAtTitleBar()Z
    .locals 2

    .prologue
    .line 2856
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    .line 2857
    .local v0, protocol:I
    packed-switch v0, :pswitch_data_0

    .line 2861
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2859
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2857
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public supportSyncDraftToServer()Z
    .locals 2

    .prologue
    .line 2824
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    .line 2825
    .local v0, protocol:I
    sparse-switch v0, :sswitch_data_0

    .line 2830
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2828
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2825
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public supportUnifiedSettings()Z
    .locals 2

    .prologue
    .line 2846
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    .line 2847
    .local v0, protocol:I
    packed-switch v0, :pswitch_data_0

    .line 2851
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2849
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2847
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public syncSentMailToServer()Z
    .locals 2

    .prologue
    .line 2802
    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    .line 2803
    .local v0, protocol:I
    packed-switch v0, :pswitch_data_0

    .line 2808
    :pswitch_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2806
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2803
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncWithServer()I
    .locals 3

    .prologue
    .line 2659
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->syncWithServer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2660
    :catch_0
    move-exception v0

    .line 2661
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateFetchTime()V
    .locals 3

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->updateFetchTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public vibrate()I
    .locals 3

    .prologue
    .line 2675
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v1}, Lcom/htc/android/mail/account/IAccount;->vibrate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2676
    :catch_0
    move-exception v0

    .line 2677
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/htc/android/mail/Account;->mIAccount:Lcom/htc/android/mail/account/IAccount;

    invoke-interface {v0}, Lcom/htc/android/mail/account/IAccount;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2931
    return-void
.end method
