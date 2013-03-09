.class public Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;
.super Ljava/lang/Object;
.source "PeopleListContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;,
        Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$MakeViewCallTask;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_ADD_AS_BLACKLIST:I = 0x8

.field private static final CONTEXT_MENU_DELETE_CONTACT:I = 0x4

.field private static final CONTEXT_MENU_EDIT_CONTACT:I = 0x3

.field private static final CONTEXT_MENU_EDIT_MY_CONTACT_CARD:I = 0x6

.field private static final CONTEXT_MENU_IP_DIAL:I = 0xb

.field private static final CONTEXT_MENU_ITEM_CALL_PRIMARY:I = 0x1

.field private static final CONTEXT_MENU_ITEM_CALL_VT:I = 0xe

.field private static final CONTEXT_MENU_ITEM_SEND_SMS_DEFAULT:I = 0xd

.field private static final CONTEXT_MENU_ITEM_SEND_SMS_PRIMARY:I = 0x2

.field private static final CONTEXT_MENU_MAKE_VIDEO_CALL:I = 0x9

.field private static final CONTEXT_MENU_SEND_MY_CONTACT_CARD:I = 0x7

.field private static final CONTEXT_MENU_SET_WIDGET_ACTION:I = 0xa

.field private static final CONTEXT_MENU_SHARE_CONTACT_VIA_SMS:I = 0x5

.field protected static final DEBUG:Z = false

.field public static final IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field private static final IP_DIAL_QUERY_TOKEN:I = 0x7da

.field public static final SIZE_OF_CONTEXT_MENU_ITEMS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "PeopleListContextMenu"

.field private static mIpDialList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mQueryIPDialHandler:Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mIpDialList:Ljava/util/ArrayList;

    .line 945
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->addContactToBlacklist(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->getContactUri(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->isSimContactItem(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mIpDialList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static addContactToBlacklist(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 727
    new-instance v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$2;

    invoke-direct {v0, p1, p0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$2;-><init>(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 739
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 740
    return-void
.end method

.method public static createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/database/Cursor;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 44
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"
    .parameter "cursor"
    .parameter "context"

    .prologue
    .line 100
    if-nez p3, :cond_0

    .line 101
    new-instance v40, Ljava/lang/IllegalArgumentException;

    const-string v41, "Cursor cannot be null!"

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 103
    :cond_0
    if-nez p0, :cond_1

    .line 104
    new-instance v40, Ljava/lang/IllegalArgumentException;

    const-string v41, "Menu cannot be null!"

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 106
    :cond_1
    if-nez p1, :cond_2

    .line 107
    new-instance v40, Ljava/lang/IllegalArgumentException;

    const-string v41, "View cannot be null!"

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 109
    :cond_2
    if-nez p2, :cond_3

    .line 110
    new-instance v40, Ljava/lang/IllegalArgumentException;

    const-string v41, "ContextMenuInfo cannot be null!"

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 112
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v40

    if-eqz v40, :cond_4

    .line 113
    new-instance v40, Ljava/lang/IllegalArgumentException;

    const-string v41, "Cursor is closed!"

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 116
    :cond_4
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v7, bundle:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 120
    .local v6, accountType:Ljava/lang/String;
    :try_start_0
    const-string v40, "ext_account_Type"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 122
    const-string v40, "accountType"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    .line 127
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_5

    const-string v40, "DeviceOnly"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 131
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->setupContextMenuForHeader(Landroid/view/ContextMenu;)V

    .line 425
    :goto_1
    return-object v7

    .line 135
    :cond_5
    const/4 v14, 0x0

    .line 136
    .local v14, displayName:Ljava/lang/String;
    const/16 v29, 0x0

    .line 137
    .local v29, phoneNumber:Ljava/lang/String;
    const/16 v30, 0x0

    .line 138
    .local v30, phoneNumberType:Ljava/lang/String;
    const/4 v12, 0x0

    .line 142
    .local v12, defaultMsgNumber:Ljava/lang/String;
    :try_start_1
    const-string v40, "display_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 143
    const-string v40, "displayName"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 147
    :goto_2
    const-string v40, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    invoke-static/range {v40 .. v42}, Lcom/android/htccontacts/util/PhoneUtils;->queryPhoneNumbers(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v31

    .line 150
    .local v31, phonesCursor2:Landroid/database/Cursor;
    if-eqz v31, :cond_9

    .line 152
    :try_start_2
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 153
    .local v10, count:I
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ne v0, v10, :cond_19

    .line 154
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v40

    if-eqz v40, :cond_8

    .line 155
    const-string v40, "data1"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 156
    const-string v40, "data2"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 157
    .local v38, type:I
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v40

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 158
    if-nez v38, :cond_18

    .line 159
    const-string v40, "data3"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, customType:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 162
    const v40, 0x7f0a0066

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 164
    :cond_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 165
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v11, v40, v41

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 170
    .end local v11           #customType:Ljava/lang/String;
    :cond_7
    :goto_3
    const-string v40, "phoneNumber"

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v40, "phoneNumberInt"

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v40, "phoneNumberType"

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v12, v29

    .line 174
    const-string v40, "defaultMsgNumber"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    .end local v38           #type:I
    :cond_8
    :goto_4
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 274
    const/16 v31, 0x0

    .line 280
    .end local v10           #count:I
    :cond_9
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_29

    .line 281
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 291
    :goto_5
    sget-boolean v40, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_VT:Z

    if-eqz v40, :cond_a

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_a

    .line 292
    const/16 v40, 0x0

    const/16 v41, 0xe

    const/16 v42, 0x0

    const v43, 0x7f0a03ca

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 297
    :cond_a
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_c

    .line 298
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v36, sb:Ljava/lang/StringBuilder;
    const-string v40, "com.anddroid.contacts.sim"

    move-object/from16 v0, v40

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_2b

    .line 301
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_b

    .line 302
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_b
    :goto_6
    const/16 v40, 0x0

    const/16 v41, 0x1

    const/16 v42, 0x1

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move-object/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 314
    .end local v36           #sb:Ljava/lang/StringBuilder;
    :cond_c
    :try_start_3
    const-string v40, "contact_presence"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 315
    .local v34, presence:I
    const/16 v40, 0x5

    move/from16 v0, v34

    move/from16 v1, v40

    if-le v0, v1, :cond_d

    .line 317
    const-string v40, "presence"

    move-object/from16 v0, v40

    move/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const/16 v40, 0x0

    const/16 v41, 0x9

    const/16 v42, 0x2

    const v43, 0x7f0a037b

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 324
    .end local v34           #presence:I
    :cond_d
    :goto_7
    const-wide/16 v22, 0x0

    .line 326
    .local v22, id:J
    :try_start_4
    const-string v40, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 328
    const-string v40, "contact_is_read_only"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 330
    .local v8, contact_is_read_only:J
    const-wide/16 v40, 0x0

    cmp-long v40, v8, v40

    if-nez v40, :cond_2c

    const/16 v26, 0x1

    .line 331
    .local v26, isEditable:Z
    :goto_8
    const-string v40, "com.anddroid.contacts.sim"

    move-object/from16 v0, v40

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 332
    if-eqz v26, :cond_2d

    const/16 v40, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v40

    invoke-static {v0, v6, v1}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2d

    const/16 v26, 0x1

    .line 335
    :cond_e
    :goto_9
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v40

    if-eqz v40, :cond_f

    .line 336
    const-string v40, "ext_account_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 337
    .local v16, extAccoutNameeIdx:I
    if-ltz v16, :cond_f

    .line 338
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 339
    .local v17, ext_account_name:Ljava/lang/String;
    if-eqz v17, :cond_f

    const-string v40, "SIM_SDN"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 340
    const/16 v26, 0x0

    .line 345
    .end local v16           #extAccoutNameeIdx:I
    .end local v17           #ext_account_name:Ljava/lang/String;
    :cond_f
    if-eqz v26, :cond_10

    .line 346
    const/16 v40, 0x0

    const/16 v41, 0x3

    const/16 v42, 0x3

    const v43, 0x7f0a013c

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 352
    :cond_10
    if-eqz v26, :cond_11

    .line 353
    const/16 v40, 0x0

    const/16 v41, 0x4

    const/16 v42, 0x4

    const v43, 0x7f0a013e

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 360
    .end local v8           #contact_is_read_only:J
    .end local v26           #isEditable:Z
    :cond_11
    :goto_a
    const-string v40, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_12

    const-string v40, "com.facebook.auth.login"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_12

    invoke-static/range {p3 .. p3}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->isRestricted(Landroid/database/Cursor;)Z

    move-result v40

    if-nez v40, :cond_12

    .line 363
    sget-short v40, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v41, 0xd8

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_2e

    .line 364
    const/16 v40, 0x0

    const/16 v41, 0x5

    const/16 v42, 0x5

    const v43, 0x7f0a0268

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 374
    :cond_12
    :goto_b
    const/16 v37, -0x1

    .line 375
    .local v37, sendToVoicemail:I
    const/16 v39, -0x1

    .line 376
    .local v39, vip:I
    const/16 v27, 0x0

    .line 378
    .local v27, isSIMSDN:Z
    :try_start_5
    const-string v40, "send_to_voicemail"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 379
    const-string v40, "vip"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 380
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v40

    if-eqz v40, :cond_13

    .line 381
    const-string v40, "ext_account_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, accountName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v40

    if-eqz v40, :cond_2f

    const/16 v27, 0x0

    .line 385
    .end local v5           #accountName:Ljava/lang/String;
    :cond_13
    :goto_c
    const/16 v40, -0x1

    move/from16 v0, v40

    move/from16 v1, v37

    if-eq v0, v1, :cond_14

    const/16 v40, -0x1

    move/from16 v0, v40

    move/from16 v1, v39

    if-eq v0, v1, :cond_14

    move/from16 v0, v39

    move/from16 v1, v37

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/BlacklistUtils;->couldAddToBlockCaller(IIZ)Z

    move-result v40

    if-eqz v40, :cond_14

    sget-boolean v40, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v40, :cond_14

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_14

    .line 388
    const/16 v40, 0x0

    const/16 v41, 0x8

    const/16 v42, 0x8

    const v43, 0x7f0a030b

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 393
    :cond_14
    const/16 v40, 0x0

    const/16 v41, 0xa

    const/16 v42, 0xa

    const v43, 0x7f0a0138

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 402
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v40

    if-nez v40, :cond_15

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v40

    if-nez v40, :cond_15

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v40

    if-nez v40, :cond_15

    sget-short v40, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_16

    :cond_15
    if-eqz v29, :cond_16

    .line 407
    const/16 v40, 0x0

    const/16 v41, 0xb

    const/16 v42, 0xb

    const v43, 0x7f0a0391

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 414
    :cond_16
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_17

    .line 415
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .restart local v36       #sb:Ljava/lang/StringBuilder;
    const v40, 0x7f0a018d

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const/16 v40, 0x0

    const/16 v41, 0xd

    const/16 v42, 0xd

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move-object/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 422
    .end local v36           #sb:Ljava/lang/StringBuilder;
    :cond_17
    const-string v40, "photo_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v32, v0

    .line 423
    .local v32, photoId:J
    const-string v40, "id"

    move-object/from16 v0, v40

    move-wide/from16 v1, v22

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 424
    const-string v40, "photoId"

    move-object/from16 v0, v40

    move-wide/from16 v1, v32

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 167
    .end local v22           #id:J
    .end local v27           #isSIMSDN:Z
    .end local v32           #photoId:J
    .end local v37           #sendToVoicemail:I
    .end local v39           #vip:I
    .restart local v10       #count:I
    .restart local v38       #type:I
    :cond_18
    const/16 v40, 0x13

    move/from16 v0, v40

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 168
    const/16 v40, 0x1

    :try_start_6
    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const v42, 0x7f0a0092

    move-object/from16 v0, p4

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v30

    goto/16 :goto_3

    .line 176
    .end local v38           #type:I
    :cond_19
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ge v0, v10, :cond_8

    .line 178
    const/16 v35, 0x0

    .line 179
    .local v35, primaryNumberFound:Z
    const/4 v13, 0x0

    .line 180
    .local v13, defaultMsgNumberFound:Z
    const/16 v40, -0x1

    :try_start_7
    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 181
    const/16 v18, 0x0

    .line 182
    .local v18, firstMobileNumber:Ljava/lang/String;
    const/16 v19, 0x0

    .line 183
    .local v19, firstNumber:Ljava/lang/String;
    const/16 v20, -0x1

    .line 184
    .local v20, firstNumberType:I
    const/16 v21, 0x0

    .line 185
    .local v21, firstNumberTypeString:Ljava/lang/String;
    :cond_1a
    :goto_d
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v40

    if-eqz v40, :cond_23

    .line 186
    const-string v40, "data1"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 187
    const-string v40, "data2"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 189
    .restart local v38       #type:I
    const-string v40, "is_super_primary"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 191
    .local v28, isSuperPrimary:I
    if-nez v35, :cond_1d

    const/16 v40, 0x1

    move/from16 v0, v40

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 192
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v40

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 193
    if-nez v38, :cond_21

    .line 194
    const-string v40, "data3"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 195
    .restart local v11       #customType:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_1b

    .line 196
    const v40, 0x7f0a0066

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 198
    :cond_1b
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_1c

    .line 199
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v11, v40, v41

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 205
    .end local v11           #customType:Ljava/lang/String;
    :cond_1c
    :goto_e
    const-string v40, "phoneNumber"

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v40, "phoneNumberInt"

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v40, "phoneNumberType"

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v35, 0x1

    .line 212
    :cond_1d
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_1f

    .line 213
    move-object/from16 v19, v29

    .line 214
    move/from16 v20, v38

    .line 215
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v40

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 216
    if-nez v20, :cond_22

    .line 217
    const-string v40, "data3"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 218
    .restart local v11       #customType:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_1e

    .line 219
    const v40, 0x7f0a0066

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 221
    :cond_1e
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_1f

    .line 222
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v11, v40, v41

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 228
    .end local v11           #customType:Ljava/lang/String;
    :cond_1f
    :goto_f
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_20

    const/16 v40, 0x2

    move/from16 v0, v40

    move/from16 v1, v38

    if-ne v0, v1, :cond_20

    .line 229
    move-object/from16 v18, v29

    .line 232
    :cond_20
    const-string v40, "data7"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 234
    .local v24, isDefaultMsdNumber:J
    if-nez v13, :cond_1a

    const-wide/16 v40, 0x1

    cmp-long v40, v40, v24

    if-nez v40, :cond_1a

    .line 235
    const-string v40, "data1"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 236
    const-string v40, "defaultMsgNumber"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v13, 0x1

    goto/16 :goto_d

    .line 201
    .end local v24           #isDefaultMsdNumber:J
    :cond_21
    const/16 v40, 0x13

    move/from16 v0, v40

    move/from16 v1, v38

    if-ne v0, v1, :cond_1c

    .line 202
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const v42, 0x7f0a0092

    move-object/from16 v0, p4

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_e

    .line 224
    :cond_22
    const/16 v40, 0x13

    move/from16 v0, v40

    move/from16 v1, v38

    if-ne v0, v1, :cond_1f

    .line 225
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const v42, 0x7f0a0092

    move-object/from16 v0, p4

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_f

    .line 243
    .end local v28           #isSuperPrimary:I
    .end local v38           #type:I
    :cond_23
    if-nez v35, :cond_25

    .line 244
    const/16 v38, -0x1

    .line 245
    .restart local v38       #type:I
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_27

    .line 246
    move-object/from16 v29, v18

    .line 247
    const/16 v38, 0x2

    .line 248
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v40

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 254
    :cond_24
    :goto_10
    const-string v40, "phoneNumber"

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v40, "phoneNumberInt"

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v40, "phoneNumberType"

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v38           #type:I
    :cond_25
    if-nez v13, :cond_8

    .line 259
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_28

    .line 260
    move-object/from16 v12, v18

    .line 264
    :cond_26
    :goto_11
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_8

    .line 265
    const-string v40, "defaultMsgNumber"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_4

    .line 268
    .end local v18           #firstMobileNumber:Ljava/lang/String;
    .end local v19           #firstNumber:Ljava/lang/String;
    .end local v20           #firstNumberType:I
    .end local v21           #firstNumberTypeString:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 269
    .local v15, e:Ljava/lang/IllegalArgumentException;
    :try_start_8
    const-string v40, "PeopleListContextMenu"

    const-string v41, "createContextMenu e"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 273
    .end local v10           #count:I
    .end local v13           #defaultMsgNumberFound:Z
    .end local v15           #e:Ljava/lang/IllegalArgumentException;
    .end local v35           #primaryNumberFound:Z
    :catchall_0
    move-exception v40

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 274
    const/16 v31, 0x0

    .line 273
    throw v40

    .line 249
    .restart local v10       #count:I
    .restart local v13       #defaultMsgNumberFound:Z
    .restart local v18       #firstMobileNumber:Ljava/lang/String;
    .restart local v19       #firstNumber:Ljava/lang/String;
    .restart local v20       #firstNumberType:I
    .restart local v21       #firstNumberTypeString:Ljava/lang/String;
    .restart local v35       #primaryNumberFound:Z
    .restart local v38       #type:I
    :cond_27
    :try_start_9
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_24

    .line 250
    move-object/from16 v29, v19

    .line 251
    move/from16 v38, v20

    .line 252
    move-object/from16 v30, v21

    goto :goto_10

    .line 261
    .end local v38           #type:I
    :cond_28
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v40

    if-nez v40, :cond_26

    .line 262
    move-object/from16 v12, v19

    goto :goto_11

    .line 285
    .end local v10           #count:I
    .end local v13           #defaultMsgNumberFound:Z
    .end local v18           #firstMobileNumber:Ljava/lang/String;
    .end local v19           #firstNumber:Ljava/lang/String;
    .end local v20           #firstNumberType:I
    .end local v21           #firstNumberTypeString:Ljava/lang/String;
    .end local v35           #primaryNumberFound:Z
    :cond_29
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_2a

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_5

    .line 288
    :cond_2a
    const v40, 0x7f0a016e

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto/16 :goto_5

    .line 305
    .restart local v36       #sb:Ljava/lang/StringBuilder;
    :cond_2b
    const v40, 0x7f0a0140

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 330
    .end local v36           #sb:Ljava/lang/StringBuilder;
    .restart local v8       #contact_is_read_only:J
    .restart local v22       #id:J
    :cond_2c
    const/16 v26, 0x0

    goto/16 :goto_8

    .line 332
    .restart local v26       #isEditable:Z
    :cond_2d
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 367
    .end local v8           #contact_is_read_only:J
    .end local v26           #isEditable:Z
    :cond_2e
    const/16 v40, 0x0

    const/16 v41, 0x5

    const/16 v42, 0x5

    const v43, 0x7f0a00e3

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 382
    .restart local v5       #accountName:Ljava/lang/String;
    .restart local v27       #isSIMSDN:Z
    .restart local v37       #sendToVoicemail:I
    .restart local v39       #vip:I
    :cond_2f
    :try_start_a
    const-string v40, "SIM_SDN"

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1

    move-result v27

    goto/16 :goto_c

    .line 384
    .end local v5           #accountName:Ljava/lang/String;
    :catch_1
    move-exception v40

    goto/16 :goto_c

    .line 356
    .end local v27           #isSIMSDN:Z
    .end local v37           #sendToVoicemail:I
    .end local v39           #vip:I
    :catch_2
    move-exception v40

    goto/16 :goto_a

    .line 320
    .end local v22           #id:J
    :catch_3
    move-exception v40

    goto/16 :goto_7

    .line 144
    .end local v31           #phonesCursor2:Landroid/database/Cursor;
    :catch_4
    move-exception v40

    goto/16 :goto_2

    .line 124
    .end local v12           #defaultMsgNumber:Ljava/lang/String;
    .end local v14           #displayName:Ljava/lang/String;
    .end local v29           #phoneNumber:Ljava/lang/String;
    .end local v30           #phoneNumberType:Ljava/lang/String;
    :catch_5
    move-exception v40

    goto/16 :goto_0
.end method

.method static editNumberBeforeCall(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "number"
    .parameter "context"

    .prologue
    .line 961
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    :goto_0
    return-void

    .line 963
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 968
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 969
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static editNumberWithIpDialPrefix(Ljava/lang/String;Landroid/content/Context;)V
    .locals 10
    .parameter "number"
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 980
    sget-object v6, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mIpDialList:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 990
    :cond_0
    sget-object v6, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 991
    sget-object v6, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mIpDialList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 992
    .local v3, prefix:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, ipDialNumber:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->editNumberBeforeCall(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 997
    .end local v2           #ipDialNumber:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$3;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1009
    .local v0, OnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0392

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1019
    .local v5, title:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v4, tempArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1021
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x2090007

    invoke-direct {v7, p1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1027
    .local v1, d:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0
.end method

.method private static getContactUri(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 7
    .parameter "bundle"

    .prologue
    const-wide/16 v5, 0x0

    .line 704
    const-string v4, "id"

    invoke-virtual {p0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 705
    .local v1, personId:J
    const-string v4, "lookupKey"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, lookupKey:Ljava/lang/String;
    const/4 v3, 0x0

    .line 707
    .local v3, uri:Landroid/net/Uri;
    cmp-long v4, v1, v5

    if-eqz v4, :cond_0

    .line 708
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 709
    invoke-static {v1, v2, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 715
    :cond_0
    :goto_0
    return-object v3

    .line 712
    :cond_1
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private static getIpDialItemCount()I
    .locals 1

    .prologue
    .line 1035
    sget-object v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mIpDialList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1036
    sget-object v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mIpDialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1039
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0a006b

    .line 429
    if-nez p0, :cond_0

    .line 451
    :goto_0
    :pswitch_0
    return v0

    .line 430
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 451
    const v0, 0x7f0a007a

    goto :goto_0

    .line 431
    :pswitch_1
    const v0, 0x7f0a0079

    goto :goto_0

    .line 432
    :pswitch_2
    const v0, 0x7f0a0078

    goto :goto_0

    .line 433
    :pswitch_3
    const v0, 0x7f0a0067

    goto :goto_0

    .line 434
    :pswitch_4
    const v0, 0x7f0a0068

    goto :goto_0

    .line 435
    :pswitch_5
    const v0, 0x7f0a0069

    goto :goto_0

    .line 436
    :pswitch_6
    const v0, 0x7f0a006a

    goto :goto_0

    .line 438
    :pswitch_7
    const v0, 0x7f0a006c

    goto :goto_0

    .line 439
    :pswitch_8
    const v0, 0x7f0a006d

    goto :goto_0

    .line 440
    :pswitch_9
    const v0, 0x7f0a006e

    goto :goto_0

    .line 441
    :pswitch_a
    const v0, 0x7f0a006f

    goto :goto_0

    .line 442
    :pswitch_b
    const v0, 0x7f0a0070

    goto :goto_0

    .line 443
    :pswitch_c
    const v0, 0x7f0a0071

    goto :goto_0

    .line 444
    :pswitch_d
    const v0, 0x7f0a0072

    goto :goto_0

    .line 445
    :pswitch_e
    const v0, 0x7f0a0073

    goto :goto_0

    .line 446
    :pswitch_f
    const v0, 0x7f0a0074

    goto :goto_0

    .line 447
    :pswitch_10
    const v0, 0x7f0a0075

    goto :goto_0

    .line 448
    :pswitch_11
    const v0, 0x7f0a0076

    goto :goto_0

    .line 449
    :pswitch_12
    const v0, 0x7f0a007b

    goto :goto_0

    .line 450
    :pswitch_13
    const v0, 0x7f0a0077

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
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
        :pswitch_13
    .end packed-switch
.end method

.method private static isRestricted(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 687
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 688
    const-string v3, "single_is_restricted"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 689
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 690
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 691
    .local v1, value:I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 694
    .end local v0           #index:I
    .end local v1           #value:I
    :cond_0
    return v2
.end method

.method private static isSimContactItem(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "bundle"

    .prologue
    .line 719
    const-string v1, "accountType"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, accountType:Ljava/lang/String;
    const-string v1, "com.anddroid.contacts.sim"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    const/4 v1, 0x1

    .line 723
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static launchEditIPDialActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 973
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://com.android.contacts/ip_dial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 975
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 976
    return-void
.end method

.method public static queryIpDialCursor(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 951
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 954
    :cond_0
    new-instance v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mQueryIPDialHandler:Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;

    .line 955
    sget-object v0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->mQueryIPDialHandler:Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;

    const/16 v1, 0x7da

    const-string v3, "content://com.android.contacts/ip_dial"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_1
    return-void
.end method

.method public static selectContextMenu(Landroid/view/MenuItem;Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 29
    .parameter "item"
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 458
    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .local v14, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v0, v14, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v21, v0

    .line 463
    .local v21, position:I
    invoke-interface/range {p0 .. p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 675
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v25, 0x0

    .end local v14           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v21           #position:I
    .end local p1
    :goto_1
    return v25

    .line 459
    .restart local p1
    :catch_0
    move-exception v11

    .line 460
    .local v11, e:Ljava/lang/ClassCastException;
    const/16 v25, 0x0

    goto :goto_1

    .line 466
    .end local v11           #e:Ljava/lang/ClassCastException;
    .restart local v14       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v21       #position:I
    :pswitch_1
    const-string v25, "phoneNumber"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 467
    .local v17, phoneNumber:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 468
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 469
    const/16 v25, 0x1

    goto :goto_1

    .line 476
    .end local v17           #phoneNumber:Ljava/lang/String;
    :pswitch_2
    const-string v25, "phoneNumber"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 477
    .restart local v17       #phoneNumber:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 478
    new-instance v12, Landroid/content/Intent;

    const-string v25, "android.intent.action.CALL_PRIVILEGED"

    invoke-static/range {v17 .. v17}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 480
    .local v12, intent:Landroid/content/Intent;
    const/high16 v25, 0x1000

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 482
    const-string v25, "photoId"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 483
    .local v19, photoId:J
    const-wide/16 v25, 0x0

    cmp-long v25, v19, v25

    if-lez v25, :cond_1

    .line 484
    const-string v25, "hasPhoto"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    :cond_1
    const-string v25, "id"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 487
    .local v15, personId:J
    const-string v25, "displayName"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 488
    .local v10, displayName:Ljava/lang/String;
    const-string v25, "phoneNumberTypeInt"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 489
    .local v18, phoneNumberTypeInt:I
    const-string v25, "personId"

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v25, "name"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v25, "number"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v25, "numberType"

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    const-string v25, "fromDialer"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    invoke-static {v12}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 495
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 502
    .end local v10           #displayName:Ljava/lang/String;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v15           #personId:J
    .end local v17           #phoneNumber:Ljava/lang/String;
    .end local v18           #phoneNumberTypeInt:I
    .end local v19           #photoId:J
    :pswitch_3
    const-string v25, "id"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 503
    .restart local v15       #personId:J
    const-wide/16 v25, 0x0

    cmp-long v25, v15, v25

    if-lez v25, :cond_0

    .line 504
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/contacts/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 505
    .local v23, rawContactUri:Landroid/net/Uri;
    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.intent.action.EDIT"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 506
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 513
    .end local v15           #personId:J
    .end local v23           #rawContactUri:Landroid/net/Uri;
    :pswitch_4
    const-string v25, "accountType"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, accountType:Ljava/lang/String;
    const-string v25, "com.anddroid.contacts.sim"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 516
    .local v13, isSIM:Z
    invoke-static/range {p2 .. p2}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->getContactUri(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v24

    .line 517
    .local v24, uri:Landroid/net/Uri;
    if-eqz v24, :cond_0

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    invoke-static {v0, v1, v13, v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    .line 519
    .local v6, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v6, :cond_0

    .line 520
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 521
    .local v8, d:Landroid/app/Dialog;
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->tryManageDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 522
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 530
    .end local v4           #accountType:Ljava/lang/String;
    .end local v6           #confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v8           #d:Landroid/app/Dialog;
    .end local v13           #isSIM:Z
    .end local v24           #uri:Landroid/net/Uri;
    :pswitch_5
    invoke-static/range {p2 .. p2}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->getContactUri(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v24

    .line 531
    .restart local v24       #uri:Landroid/net/Uri;
    if-eqz v24, :cond_0

    .line 532
    new-instance v12, Landroid/content/Intent;

    const-string v25, "com.android.htccontacts.ACTION_SEND_CONTACT"

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v25, "text/x-vCard"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 535
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 552
    .end local v12           #intent:Landroid/content/Intent;
    .end local v24           #uri:Landroid/net/Uri;
    :pswitch_6
    const-string v25, "LookUpUri"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    const-string v25, "LookUpUri"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 553
    .local v22, profileLookUpUri:Landroid/net/Uri;
    :goto_2
    if-eqz v22, :cond_3

    .line 554
    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.intent.action.EDIT"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 555
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 552
    .end local v22           #profileLookUpUri:Landroid/net/Uri;
    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .line 557
    .restart local v22       #profileLookUpUri:Landroid/net/Uri;
    :cond_3
    const-string v25, "PeopleListContextMenu"

    const-string v26, "selectContextMenu profileLookupUri NULL!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 564
    .end local v22           #profileLookUpUri:Landroid/net/Uri;
    :pswitch_7
    const-string v25, "id"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 565
    .restart local v15       #personId:J
    const-wide/16 v25, 0x0

    cmp-long v25, v15, v25

    if-nez v25, :cond_4

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v5

    .line 567
    .local v5, b:Landroid/os/Bundle;
    const-string v25, "contact_id"

    const-wide/16 v26, 0x0

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 569
    .end local v5           #b:Landroid/os/Bundle;
    :cond_4
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->shareMyContactCard(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 576
    .end local v15           #personId:J
    :pswitch_8
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    .local v5, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v25, 0x7f0a02f8

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a030e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 580
    const v25, 0x104000a

    new-instance v26, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$1;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 586
    const/high16 v25, 0x104

    const/16 v26, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 587
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 588
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 589
    .restart local v8       #d:Landroid/app/Dialog;
    if-eqz v8, :cond_0

    .line 590
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->tryManageDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 591
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 600
    .end local v5           #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v8           #d:Landroid/app/Dialog;
    :pswitch_9
    const-string v25, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 601
    .restart local v15       #personId:J
    const-wide/16 v25, 0x0

    cmp-long v25, v15, v25

    if-lez v25, :cond_5

    .line 602
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/htccontacts/app/BaseActivity;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 603
    new-instance v25, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$MakeViewCallTask;

    check-cast p1, Lcom/android/htccontacts/app/BaseActivity;

    .end local p1
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$MakeViewCallTask;-><init>(Lcom/android/htccontacts/app/BaseActivity;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$MakeViewCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 604
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 610
    .end local v15           #personId:J
    .restart local p1
    :cond_5
    :pswitch_a
    const-string v25, "id"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 611
    .restart local v15       #personId:J
    sget-object v25, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 612
    .local v7, contactUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 613
    .restart local v12       #intent:Landroid/content/Intent;
    const-wide/16 v25, 0x0

    cmp-long v25, v15, v25

    if-lez v25, :cond_0

    .line 614
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 615
    .restart local v12       #intent:Landroid/content/Intent;
    const-class v25, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 616
    const-string v25, "com.android.htccontacts"

    const-string v26, "com.android.htccontacts.ContactGlanceSelectDefaultActionActivity"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    invoke-virtual {v12, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 619
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 624
    .end local v7           #contactUri:Landroid/net/Uri;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v15           #personId:J
    :pswitch_b
    const-string v25, "phoneNumber"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 625
    .restart local v17       #phoneNumber:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 626
    new-instance v12, Landroid/content/Intent;

    const-string v25, "android.intent.action.CALL_PRIVILEGED"

    invoke-static/range {v17 .. v17}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 628
    .restart local v12       #intent:Landroid/content/Intent;
    const/high16 v25, 0x1000

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 630
    const-string v25, "photoId"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 631
    .restart local v19       #photoId:J
    const-wide/16 v25, 0x0

    cmp-long v25, v19, v25

    if-lez v25, :cond_6

    .line 632
    const-string v25, "hasPhoto"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 634
    :cond_6
    const-string v25, "id"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 635
    .restart local v15       #personId:J
    const-string v25, "displayName"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 636
    .restart local v10       #displayName:Ljava/lang/String;
    const-string v25, "phoneNumberTypeInt"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 637
    .restart local v18       #phoneNumberTypeInt:I
    const-string v25, "personId"

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string v25, "name"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v25, "number"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string v25, "numberType"

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    const-string v25, "fromDialer"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 642
    const-string v25, "isVTCall"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 643
    invoke-static {v12}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 644
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 650
    .end local v10           #displayName:Ljava/lang/String;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v15           #personId:J
    .end local v17           #phoneNumber:Ljava/lang/String;
    .end local v18           #phoneNumberTypeInt:I
    .end local v19           #photoId:J
    :pswitch_c
    invoke-static {}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->getIpDialItemCount()I

    move-result v25

    if-lez v25, :cond_7

    .line 651
    const-string v25, "phoneNumber"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 652
    .restart local v17       #phoneNumber:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->editNumberWithIpDialPrefix(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 654
    .end local v17           #phoneNumber:Ljava/lang/String;
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->launchEditIPDialActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 660
    :pswitch_d
    const-string v25, "defaultMsgNumber"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 661
    .local v9, defaultMsgNumber:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v25, "android.intent.action.SENDTO"

    const-string v26, "smsto"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v9, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 664
    .restart local v12       #intent:Landroid/content/Intent;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 668
    :goto_3
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 665
    :catch_1
    move-exception v11

    .line 666
    .local v11, e:Landroid/content/ActivityNotFoundException;
    const-string v25, "PeopleListContextMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "selectContextMenu No activity found for intent: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method public static setupContextMenuForHeader(Landroid/view/ContextMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 679
    const v0, 0x7f0a0117

    invoke-interface {p0, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 681
    const v0, 0x7f0a00e5

    invoke-interface {p0, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 683
    const v0, 0x7f0a00e6

    invoke-interface {p0, v1, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 684
    return-void
.end method

.method private static tryManageDialog(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 1
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 698
    instance-of v0, p0, Lcom/android/htccontacts/app/BaseActivity;

    if-eqz v0, :cond_0

    .line 699
    check-cast p0, Lcom/android/htccontacts/app/BaseActivity;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 701
    :cond_0
    return-void
.end method
