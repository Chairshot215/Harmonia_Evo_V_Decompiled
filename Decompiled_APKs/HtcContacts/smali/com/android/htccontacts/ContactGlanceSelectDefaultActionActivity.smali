.class public Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ContactGlanceSelectDefaultActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;,
        Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;,
        Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;,
        Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;,
        Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;,
        Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME_INDEX:I = 0xb

.field private static final ACCOUNT_TYPE_INDEX:I = 0xc

.field private static final ACTION_TYPE_EXCHANGE_CAR:Ljava/lang/String; = "ExchangePhoneCar"

.field private static final ACTION_TYPE_EXCHANGE_PHONE_RADIO:Ljava/lang/String; = "ExchangePhoneRadio"

.field private static final ACTION_TYPE_MAIL:Ljava/lang/String; = "Mail"

.field private static final ACTION_TYPE_PHONE_ASSISTANT:Ljava/lang/String; = "PhoneAssistant"

.field private static final ACTION_TYPE_PHONE_HOME:Ljava/lang/String; = "PhoneHome"

.field private static final ACTION_TYPE_PHONE_MOBILE:Ljava/lang/String; = "PhoneMobile"

.field private static final ACTION_TYPE_PHONE_PAGER:Ljava/lang/String; = "PhonePager"

.field private static final ACTION_TYPE_PHONE_WORK:Ljava/lang/String; = "PhoneWork"

.field private static final ACTION_TYPE_SMS:Ljava/lang/String; = "SMS"

.field private static final CONTACT_ID_INDEX:I = 0x2

.field private static final CROP_ITEM_REQ:I = 0xc

.field private static final DATA4_INDEX:I = 0x9

.field private static final DATA_ID_INDEX:I = 0x0

.field private static final DATA_INDEX:I = 0x6

.field private static final DATA_PROJECT:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field public static IS_DEFAULT_ACTION:Ljava/lang/String; = null

.field private static final IS_PRIMARY_INDEX:I = 0xe

.field private static final IS_SUPER_PRIMARY_INDEX:I = 0xe

.field private static final KIND_DIAL:I = 0xf01

.field private static final KIND_EMAIL:I = 0x1

.field private static final KIND_SEND_MSG:I = 0xf02

.field private static final LABEL_INDEX:I = 0x8

.field private static final LOOKUP_KEY_INDEX:I = 0x4

.field private static final MIMETYPE_INDEX:I = 0x1

.field private static final PHOTO_DATA_INDEX:I = 0xa

.field private static final PHOTO_ID_INDEX:I = 0x5

.field private static final PHOTO_PICKED_WITH_DATA:I = 0xbcd

.field private static final RAW_CONTACT_ID_INDEX:I = 0x3

.field private static final SELECT_CONTACT_PHOTO:I = 0xd

.field private static final TAG:Ljava/lang/String; = "ContactGlanceSelectDefaultActionActivity"

.field private static final TYPE_INDEX:I = 0x7


# instance fields
.field private mActionDataIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDisplayName:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mLookupUri:Landroid/net/Uri;

.field private mQueryHandler:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutAction:Ljava/lang/String;

.field private mUpdateDefaultActionDataId:J

.field private mUri:Landroid/net/Uri;

.field private mbEnableContactCardOption:Z

.field private mbForShortcut:Z

.field private mlPersonID:J

.field protected mlist:Lcom/htc/widget/HtcListView;

.field private mnType:I

.field private msDefaultActionInfo:Ljava/lang/String;

.field private mstrGroupName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->DATA_PROJECT:[Ljava/lang/String;

    .line 147
    const-string v0, "data12"

    sput-object v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->IS_DEFAULT_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mbEnableContactCardOption:Z

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUpdateDefaultActionDataId:J

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mActionDataIdList:Ljava/util/ArrayList;

    .line 1060
    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlPersonID:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlPersonID:J

    return-wide p1
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->DATA_PROJECT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method private buildAllPhoneEntries()V
    .locals 18

    .prologue
    .line 661
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v16, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 670
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 672
    .local v15, mimeType:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 724
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    .end local v15           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/android/htccontacts/HtcViewContactDetail;->DeDuplicatePhoneEntries(Ljava/util/ArrayList;)V

    .line 729
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 730
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 731
    .local v12, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 677
    .end local v12           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v13           #i$:Ljava/util/Iterator;
    .restart local v15       #mimeType:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 686
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mActionDataIdList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 693
    .local v6, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 695
    .local v7, typeValue:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 697
    .local v14, label:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .local v10, builder:Ljava/lang/StringBuilder;
    const v1, 0x7f0a0171

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v1, " "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 702
    .local v9, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v9, v15, v7, v14}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 710
    .local v11, display:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 712
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :cond_4
    const/4 v8, 0x0

    .line 716
    .local v8, isPrimary:Z
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/htccontacts/HtcViewContactDetail;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v17

    .line 717
    .local v17, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v1, 0xf01

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 718
    move-object/from16 v0, v17

    iput v7, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    .line 720
    if-eqz v17, :cond_1

    .line 721
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 734
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #typeValue:I
    .end local v8           #isPrimary:Z
    .end local v9           #accountType:Ljava/lang/String;
    .end local v10           #builder:Ljava/lang/StringBuilder;
    .end local v11           #display:Ljava/lang/String;
    .end local v14           #label:Ljava/lang/String;
    .end local v15           #mimeType:Ljava/lang/String;
    .end local v17           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_5
    return-void
.end method

.method private buildContactEntriesFor()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 795
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v10, mailEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 800
    .local v11, mimeType:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 826
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    .end local v11           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-static {v10}, Lcom/android/htccontacts/HtcViewContactDetail;->DeDuplicateEntries(Ljava/util/ArrayList;)V

    .line 830
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 831
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 832
    .local v8, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 804
    .end local v8           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v9           #i$:Ljava/util/Iterator;
    .restart local v11       #mimeType:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 805
    .local v2, id:J
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mActionDataIdList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 807
    .local v6, data:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 808
    .local v12, typeText:Ljava/lang/String;
    const/4 v7, 0x0

    .line 810
    .local v7, typeValue:I
    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 814
    :goto_2
    const/4 v13, 0x0

    .line 816
    .local v13, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUri:Landroid/net/Uri;

    const v4, 0x2080a9c

    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/htccontacts/HtcViewContactDetail;->newEmailEntry(Landroid/content/Context;Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v13

    .line 818
    iput v14, v13, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 823
    if-eqz v13, :cond_1

    .line 824
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 811
    .end local v13           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 835
    .end local v2           #id:J
    .end local v6           #data:Ljava/lang/String;
    .end local v7           #typeValue:I
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v12           #typeText:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private buildQuickContact()V
    .locals 4

    .prologue
    .line 618
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 621
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v1, 0x7f0a0136

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 622
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 623
    const v1, 0x20801c7

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 624
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 626
    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const/high16 v2, 0x1420

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 628
    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 629
    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const-string v2, "mode"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    iget-object v2, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const-string v3, "exclude_mimes"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method

.method private buildSendMessage()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 738
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v6, sendMessageEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 741
    :cond_0
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, mimeType:Ljava/lang/String;
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 779
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 782
    .end local v4           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Lcom/android/htccontacts/HtcViewContactDetail;->DeDuplicatePhoneEntries(Ljava/util/ArrayList;)V

    .line 784
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 785
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 786
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 753
    .end local v0           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local v4       #mimeType:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 755
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 759
    new-instance v8, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v8}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 761
    .local v8, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 762
    .local v2, id:J
    iput-wide v2, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 763
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 767
    .local v7, uri:Landroid/net/Uri;
    iput-object v7, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 768
    const v9, 0x20801cf

    iput v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 769
    const v9, 0x7f0a0141

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 770
    iput-object v5, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 771
    const/16 v9, 0xf02

    iput v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 772
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string v11, "sms"

    const/4 v12, 0x0

    invoke-static {v11, v5, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v9, v8, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 774
    iget-object v9, v8, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const-string v10, "type_message"

    invoke-virtual {v9, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 776
    if-eqz v8, :cond_1

    .line 777
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    .end local v2           #id:J
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_4
    return-void
.end method

.method private buildViewEntry()V
    .locals 3

    .prologue
    .line 607
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 608
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v1, 0x7f0a0135

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 609
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 610
    const v1, 0x20801c7

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 611
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 612
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    return-void
.end method

.method private ensureDataCursor()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method private finishAndDone()V
    .locals 4

    .prologue
    .line 513
    new-instance v0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;-><init>()V

    .line 514
    .local v0, delta:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;
    new-instance v1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;-><init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 515
    return-void
.end method

.method private hasPhoto()Z
    .locals 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 640
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 644
    .local v0, photo_id:I
    if-nez v0, :cond_1

    .line 645
    const/4 v1, 0x0

    .line 655
    .end local v0           #photo_id:I
    :goto_0
    return v1

    .line 647
    .restart local v0       #photo_id:I
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    .end local v0           #photo_id:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private informFavoriteChange()V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mstrGroupName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlPersonID:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 601
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 602
    return-void
.end method

.method public static resetIsDefaultAction(Landroid/content/ContentResolver;Ljava/util/ArrayList;J)Z
    .locals 12
    .parameter "resolver"
    .parameter
    .parameter "newDefaultDataId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 1150
    .local p1, dataIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 1151
    .local v7, result:Z
    const/4 v5, 0x0

    .line 1152
    .local v5, isResetAll:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 1153
    :cond_0
    const/4 v10, 0x0

    .line 1199
    :goto_0
    return v10

    .line 1155
    :cond_1
    const-wide/16 v10, -0x1

    cmp-long v10, p2, v10

    if-nez v10, :cond_2

    .line 1156
    const/4 v5, 0x1

    .line 1159
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1160
    .local v8, size:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1161
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v8, :cond_4

    .line 1162
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1163
    .local v3, id:J
    add-int/lit8 v10, v8, -0x1

    if-ge v2, v10, :cond_3

    .line 1164
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1165
    const-string v10, " ,"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1161
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1168
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1172
    .end local v3           #id:J
    :cond_4
    const/4 v10, 0x0

    const-string v11, "_id IN ( "

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1173
    const-string v10, " ) "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1175
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v6, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1179
    .local v9, values:Landroid/content/ContentValues;
    sget-object v10, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->IS_DEFAULT_ACTION:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1181
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1182
    invoke-virtual {v1, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1183
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    if-nez v5, :cond_5

    .line 1185
    new-instance v9, Landroid/content/ContentValues;

    .end local v9           #values:Landroid/content/ContentValues;
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1186
    .restart local v9       #values:Landroid/content/ContentValues;
    sget-object v10, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->IS_DEFAULT_ACTION:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1187
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1188
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1189
    invoke-virtual {v1, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1190
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    :cond_5
    :try_start_0
    const-string v10, "com.android.contacts"

    invoke-virtual {p0, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    const/4 v7, 0x1

    :goto_3
    move v10, v7

    .line 1199
    goto/16 :goto_0

    .line 1197
    :catch_0
    move-exception v10

    goto :goto_3

    .line 1196
    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method private setResultOKwithData()V
    .locals 4

    .prologue
    .line 943
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 944
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v1, "personID"

    iget-wide v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlPersonID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 945
    const-string v1, "defaultActionInfo"

    iget-object v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->msDefaultActionInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->setResult(ILandroid/content/Intent;)V

    .line 947
    return-void
.end method


# virtual methods
.method addToGlance()V
    .locals 13

    .prologue
    .line 534
    :try_start_0
    const-string v6, "Favorite_8656150684447252476_6727701920173350445"

    .line 537
    .local v6, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mstrGroupName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mstrGroupName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 539
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 540
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "starred"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    const-string v9, "default_action"

    iget-object v10, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->msDefaultActionInfo:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 543
    .local v1, contactFixedId:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, selection:Ljava/lang/String;
    sget-object v7, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 545
    .local v7, updateFavoriteUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v8, v5, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mActionDataIdList:Ljava/util/ArrayList;

    iget-wide v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUpdateDefaultActionDataId:J

    invoke-static {v9, v10, v11, v12}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->resetIsDefaultAction(Landroid/content/ContentResolver;Ljava/util/ArrayList;J)Z

    .line 571
    .end local v1           #contactFixedId:J
    .end local v5           #selection:Ljava/lang/String;
    .end local v7           #updateFavoriteUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 572
    .restart local v1       #contactFixedId:J
    const-string v9, "DefaultActionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WRITE DEFAULT ACTION:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->msDefaultActionInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->msDefaultActionInfo:Ljava/lang/String;

    invoke-static {p0, v9, v1, v2}, Lcom/htc/util/contacts/DefaultActionUtils;->setDafaultAction(Landroid/content/Context;Ljava/lang/String;J)V

    .line 576
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->informFavoriteChange()V

    .line 582
    .end local v1           #contactFixedId:J
    .end local v6           #str:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 552
    .restart local v6       #str:Ljava/lang/String;
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 553
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v9, "default_action"

    iget-object v10, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->msDefaultActionInfo:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUri:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mActionDataIdList:Ljava/util/ArrayList;

    iget-wide v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUpdateDefaultActionDataId:J

    invoke-static {v9, v10, v11, v12}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->resetIsDefaultAction(Landroid/content/ContentResolver;Ljava/util/ArrayList;J)Z

    .line 561
    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mstrGroupName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mstrGroupName:Ljava/lang/String;

    const-string v10, "Frequent Contacts"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v0, addedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v4, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-wide v9, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlPersonID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mstrGroupName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mstrGroupName:Ljava/lang/String;

    invoke-static {v9, v0, v4, v10, v11}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 578
    .end local v0           #addedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4           #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v6           #str:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 580
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "ContactGlanceSelectDefaultActionActivity"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method afterAddToGlance()V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->setResultOKwithData()V

    .line 586
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->finish()V

    .line 587
    return-void
.end method

.method public assignCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    .line 880
    .local v0, tempCursor:Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    .line 881
    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 884
    :cond_0
    return-void
.end method

.method public buildEntries()V
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    .line 892
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mbForShortcut:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mbEnableContactCardOption:Z

    if-eqz v0, :cond_1

    .line 893
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mbForShortcut:Z

    if-eqz v0, :cond_c

    .line 894
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 895
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->buildViewEntry()V

    .line 909
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 911
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->buildAllPhoneEntries()V

    .line 914
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 916
    :cond_4
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->buildSendMessage()V

    .line 923
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 924
    :cond_6
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->buildContactEntriesFor()V

    .line 927
    :cond_7
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mbForShortcut:Z

    if-eqz v0, :cond_9

    .line 928
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 931
    :cond_8
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->buildQuickContact()V

    .line 934
    :cond_9
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    .line 935
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlist:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 937
    :cond_a
    return-void

    .line 900
    :cond_b
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->buildViewEntry()V

    goto :goto_0

    .line 904
    :cond_c
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->buildViewEntry()V

    goto/16 :goto_0

    .line 918
    :cond_d
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 447
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 463
    :sswitch_0
    if-eqz p3, :cond_0

    .line 465
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 466
    .local v1, photo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 476
    new-instance v2, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;-><init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 458
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :sswitch_1
    new-instance v2, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;-><init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 486
    :sswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 487
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 489
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 490
    .restart local v1       #photo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 500
    new-instance v2, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;-><init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 450
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0xbcd -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->requestWindowFeature(I)Z

    .line 155
    const v2, 0x7f030024

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->setContentView(I)V

    .line 158
    const v2, 0x7f0a021a

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->setGenericTitleBar(I)V

    .line 160
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlist:Lcom/htc/widget/HtcListView;

    .line 163
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 164
    .local v1, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    .line 165
    .local v0, buttonCancel:Lcom/htc/widget/HtcFooterButton;
    new-instance v2, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$1;-><init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v2, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;-><init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    iput-object v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mQueryHandler:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;

    .line 177
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 841
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 842
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mCursor:Landroid/database/Cursor;

    .line 846
    :cond_0
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 14
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 272
    iget-object v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getEntry(Ljava/util/ArrayList;I)Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 273
    .local v5, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v5, :cond_1

    .line 275
    iget-object v7, v5, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 276
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_1

    .line 278
    iget-boolean v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mbForShortcut:Z

    if-eqz v11, :cond_2

    .line 279
    iget-object v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mExtras:Landroid/os/Bundle;

    if-eqz v11, :cond_0

    .line 280
    iget-object v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mExtras:Landroid/os/Bundle;

    const-string v12, "display_name"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, display:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 282
    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->spliteDisplayName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 283
    .local v1, bundle:Landroid/os/Bundle;
    const-string v11, "data2"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, givenName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 285
    iget-object v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mExtras:Landroid/os/Bundle;

    const-string v12, "display_name"

    invoke-virtual {v11, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #display:Ljava/lang/String;
    .end local v6           #givenName:Ljava/lang/String;
    :cond_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 290
    .local v8, resultIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v8, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 292
    const/4 v11, -0x1

    invoke-virtual {p0, v11, v8}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->finish()V

    .line 443
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resultIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 300
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_2
    iget-boolean v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mbEnableContactCardOption:Z

    if-eqz v11, :cond_3

    if-nez p3, :cond_3

    .line 301
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v12, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mlPersonID:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 302
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->msDefaultActionInfo:Ljava/lang/String;

    .line 438
    .end local v10           #uri:Landroid/net/Uri;
    :goto_1
    new-instance v11, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;-><init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Void;

    invoke-virtual {v11, v12}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 311
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v9, sbDefaultActionInfo:Ljava/lang/StringBuilder;
    iget v11, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    sparse-switch v11, :sswitch_data_0

    .line 394
    :goto_2
    const-string v11, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    if-ne v11, v12, :cond_5

    .line 395
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    if-eqz v5, :cond_4

    iget-object v11, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    if-eqz v11, :cond_4

    .line 397
    iget-object v11, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 398
    .local v2, dataId:J
    iput-wide v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUpdateDefaultActionDataId:J

    .line 420
    .end local v2           #dataId:J
    :cond_4
    :goto_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->msDefaultActionInfo:Ljava/lang/String;

    goto :goto_1

    .line 316
    :sswitch_0
    iget v11, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    packed-switch v11, :pswitch_data_0

    .line 352
    :pswitch_0
    const-string v11, "PhoneMobile"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    :pswitch_1
    const-string v11, "PhoneMobile"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 322
    :pswitch_2
    const-string v11, "PhoneHome"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 328
    :pswitch_3
    const-string v11, "PhoneWork"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 331
    :pswitch_4
    const-string v11, "PhonePager"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 335
    :pswitch_5
    const-string v11, "PhoneAssistant"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 338
    :pswitch_6
    const-string v11, "ExchangePhoneRadio"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 341
    :pswitch_7
    const-string v11, "ExchangePhoneCar"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 387
    :sswitch_1
    const-string v11, "SMS"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 390
    :sswitch_2
    const-string v11, "Mail"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 403
    :cond_5
    const/16 v11, 0xf02

    iget v12, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v11, v12, :cond_6

    .line 404
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "sms:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    if-eqz v5, :cond_4

    iget-object v11, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    if-eqz v11, :cond_4

    .line 406
    iget-object v11, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 407
    .restart local v2       #dataId:J
    iput-wide v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUpdateDefaultActionDataId:J

    goto/16 :goto_3

    .line 410
    .end local v2           #dataId:J
    :cond_6
    const/4 v11, 0x1

    iget v12, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v11, v12, :cond_4

    .line 411
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "mailto:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    if-eqz v5, :cond_4

    iget-object v11, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    if-eqz v11, :cond_4

    .line 413
    iget-object v11, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 414
    .restart local v2       #dataId:J
    iput-wide v2, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mUpdateDefaultActionDataId:J

    goto/16 :goto_3

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xf01 -> :sswitch_0
        0xf02 -> :sswitch_1
    .end sparse-switch

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    if-eqz v0, :cond_0

    .line 258
    iput-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    iput-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mSections:Ljava/util/ArrayList;

    .line 266
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 182
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 184
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 186
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 189
    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mnType:I

    .line 190
    const-string v3, "for_shortcut"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mbForShortcut:Z

    .line 191
    const-string v3, "display_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mDisplayName:Ljava/lang/String;

    .line 192
    const-string v3, "ShortcutAction"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mShortcutAction:Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mExtras:Landroid/os/Bundle;

    .line 195
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 196
    .local v1, lookupUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mLookupUri:Landroid/net/Uri;

    .line 198
    iput-boolean v6, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mbEnableContactCardOption:Z

    .line 202
    const-string v3, "default_action_for_group"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mstrGroupName:Ljava/lang/String;

    .line 213
    new-instance v2, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;-><init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    .line 214
    .local v2, task:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;
    new-array v3, v6, [Landroid/net/Uri;

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 249
    .end local v1           #lookupUri:Landroid/net/Uri;
    .end local v2           #task:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryContactActionTask;
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v3, "ContactGlanceSelectDefaultActionActivity"

    const-string v4, "onResume no intent with mlPersonID"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startQuery(Landroid/net/Uri;)V
    .locals 11
    .parameter "contacturi"

    .prologue
    const/4 v2, 0x0

    .line 952
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 954
    .local v9, contact_id:J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 955
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 956
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "data"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 957
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(mimetype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 963
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->mQueryHandler:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->DATA_PROJECT:[Ljava/lang/String;

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    return-void
.end method
