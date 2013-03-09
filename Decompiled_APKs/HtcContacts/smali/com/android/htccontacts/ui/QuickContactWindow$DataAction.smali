.class Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Lcom/android/htccontacts/ui/QuickContactWindow$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataAction"
.end annotation


# instance fields
.field private mAlternate:Z

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataUri:Landroid/net/Uri;

.field private mHeader:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field public final mKind:Lcom/android/htccontacts/model/DataKind;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/htccontacts/model/DataKind;JLandroid/database/Cursor;)V
    .locals 20
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "dataId"
    .parameter "cursor"

    .prologue
    .line 1075
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mContext:Landroid/content/Context;

    .line 1077
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    .line 1078
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    .line 1081
    const-string v17, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mAlternate:Z

    .line 1082
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mAlternate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->actionAltHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->actionAltHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/htccontacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mHeader:Ljava/lang/CharSequence;

    .line 1088
    :cond_0
    :goto_0
    const-string v17, "is_super_primary"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$200(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_1

    .line 1089
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIsPrimary:Z

    .line 1092
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/htccontacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mBody:Ljava/lang/CharSequence;

    .line 1096
    :cond_2
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    .line 1099
    const-string v17, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1100
    const-string v17, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1101
    .local v13, number:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1102
    const-string v17, "tel"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1103
    .local v6, callUri:Landroid/net/Uri;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "number"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    .end local v6           #callUri:Landroid/net/Uri;
    .end local v13           #number:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 1178
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    .line 1182
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const/high16 v18, 0x1400

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1183
    return-void

    .line 1084
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/htccontacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mHeader:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1107
    :cond_6
    const-string v17, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1108
    const-string v17, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1109
    .restart local v13       #number:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1110
    const-string v17, "smsto"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1111
    .local v15, smsUri:Landroid/net/Uri;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.SENDTO"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 1114
    .end local v13           #number:Ljava/lang/String;
    .end local v15           #smsUri:Landroid/net/Uri;
    :cond_7
    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1115
    const-string v17, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1118
    .local v3, address:Ljava/lang/String;
    const/16 v17, 0x3

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1119
    .local v12, name:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 1120
    invoke-static {v12, v3}, Lcom/htc/util/mail/MailUtils;->getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1125
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1126
    const-string v17, "mailto"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1127
    .local v11, mailUri:Landroid/net/Uri;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.SENDTO"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 1123
    .end local v11           #mailUri:Landroid/net/Uri;
    :cond_8
    move-object v12, v3

    goto :goto_2

    .line 1136
    .end local v3           #address:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    :cond_9
    const-string v17, "vnd.android.cursor.item/website"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1137
    const-string v17, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1138
    .local v16, url:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1139
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 1142
    .end local v16           #url:Ljava/lang/String;
    :cond_a
    const-string v17, "vnd.android.cursor.item/im"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1143
    const-string v17, "vnd.android.cursor.item/email_v2"

    const-string v18, "mimetype"

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1145
    .local v10, isEmail:Z
    if-nez v10, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->isProtocolValid(Landroid/database/Cursor;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1146
    :cond_b
    if-eqz v10, :cond_e

    const/4 v14, 0x5

    .line 1148
    .local v14, protocol:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    .line 1149
    .local v5, backupUri:Landroid/net/Uri;
    if-eqz v10, :cond_c

    .line 1152
    const v17, 0x7f0a00b7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mHeader:Ljava/lang/CharSequence;

    .line 1153
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    .line 1156
    :cond_c
    const-string v17, "data6"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1157
    .local v8, host:Ljava/lang/String;
    if-eqz v10, :cond_f

    const-string v17, "data1"

    :goto_4
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1158
    .local v7, data:Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_d

    .line 1160
    invoke-static {v14}, Lcom/android/htccontacts/util/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v8

    .line 1163
    :cond_d
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 1164
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1165
    .local v4, authority:Ljava/lang/String;
    new-instance v17, Landroid/net/Uri$Builder;

    invoke-direct/range {v17 .. v17}, Landroid/net/Uri$Builder;-><init>()V

    const-string v18, "imto"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 1167
    .local v9, imUri:Landroid/net/Uri;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.SENDTO"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 1146
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #backupUri:Landroid/net/Uri;
    .end local v7           #data:Ljava/lang/String;
    .end local v8           #host:Ljava/lang/String;
    .end local v9           #imUri:Landroid/net/Uri;
    .end local v14           #protocol:I
    :cond_e
    const-string v17, "data5"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$200(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_3

    .line 1157
    .restart local v5       #backupUri:Landroid/net/Uri;
    .restart local v8       #host:Ljava/lang/String;
    .restart local v14       #protocol:I
    :cond_f
    const-string v17, "data1"

    goto :goto_4

    .line 1171
    .restart local v7       #data:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    goto/16 :goto_1
.end method

.method private isProtocolValid(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 1186
    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1187
    .local v0, columnIndex:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1195
    :goto_0
    return v2

    .line 1191
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    const/4 v2, 0x1

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v1

    .line 1193
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public collapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 1246
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->shouldCollapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    const/4 v0, 0x0

    .line 1249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1058
    check-cast p1, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->collapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFallbackIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 1226
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v1, v3, Lcom/android/htccontacts/model/DataKind;->resPackageName:Ljava/lang/String;

    .line 1227
    .local v1, resPackageName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-object v2

    .line 1229
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1230
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mAlternate:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget v3, v3, Lcom/android/htccontacts/model/DataKind;->iconAltRes:I

    if-eq v3, v4, :cond_2

    .line 1231
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget v3, v3, Lcom/android/htccontacts/model/DataKind;->iconAltRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 1232
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget v3, v3, Lcom/android/htccontacts/model/DataKind;->iconRes:I

    if-eq v3, v4, :cond_0

    .line 1233
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget v3, v3, Lcom/android/htccontacts/model/DataKind;->iconRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mHeader:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIsPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z
    .locals 7
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 1254
    if-nez p1, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return v1

    .line 1257
    :cond_1
    instance-of v2, p1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;

    if-nez v2, :cond_2

    .line 1258
    const-string v2, "QuickContactWindow"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1261
    check-cast v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;

    .line 1262
    .local v0, other:Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    invoke-static {v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1265
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/htccontacts/util/ContactsUtils;->shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1269
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1274
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1058
    check-cast p1, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->shouldCollapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method
