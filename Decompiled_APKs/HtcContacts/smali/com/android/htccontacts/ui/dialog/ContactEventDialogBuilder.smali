.class public Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;
.super Ljava/lang/Object;
.source "ContactEventDialogBuilder.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final TYPE_ANNIVERSARY:I = 0x1

.field public static final TYPE_BIRTHDAY:I = 0x0

.field public static final TYPE_OTHER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addView(Landroid/view/ViewGroup;Landroid/view/View;[I)V
    .locals 2
    .parameter "viewGroup"
    .parameter "view"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 321
    aget v0, p2, v1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 322
    aget v0, p2, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v1

    .line 323
    return-void
.end method

.method public static buildDialog(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 7
    .parameter "context"
    .parameter "title"

    .prologue
    const/4 v6, 0x1

    .line 69
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 73
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 75
    .local v3, layout:Landroid/widget/LinearLayout;
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 81
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 83
    .local v1, dialog:Landroid/app/Dialog;
    return-object v1
.end method

.method public static prepareDialog(Landroid/content/Context;Landroid/app/Dialog;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/util/ArrayList;)V
    .locals 48
    .parameter "context"
    .parameter "dialog"
    .parameter "type"
    .parameter "title"
    .parameter "displayName"
    .parameter "eventOccurTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Dialog;",
            "I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p7, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez p1, :cond_1

    .line 318
    :cond_0
    return-void

    .line 101
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "date_format_short"

    invoke-static {v3, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 106
    .local v22, dateFormat:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 107
    .local v16, calendar:Ljava/util/Calendar;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 108
    move-object/from16 v0, v16

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 110
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    .line 112
    .local v40, sTimeInfo:Ljava/lang/String;
    const v3, 0x7f07002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 113
    .local v43, textView:Landroid/widget/TextView;
    if-eqz v43, :cond_2

    .line 114
    move-object/from16 v0, v43

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_2
    const v3, 0x7f07002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v43

    .end local v43           #textView:Landroid/widget/TextView;
    check-cast v43, Landroid/widget/TextView;

    .line 117
    .restart local v43       #textView:Landroid/widget/TextView;
    if-eqz v43, :cond_3

    .line 118
    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_3
    const v3, 0x7f07002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 121
    .local v15, button:Landroid/widget/Button;
    if-eqz v15, :cond_4

    .line 122
    new-instance v3, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$1;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v15, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_4
    const v3, 0x7f07002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/view/ViewGroup;

    .line 135
    .local v46, viewHolder:Landroid/view/ViewGroup;
    invoke-virtual/range {v46 .. v46}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 136
    .local v14, bundle:Landroid/os/Bundle;
    if-nez v14, :cond_5

    .line 137
    new-instance v14, Landroid/os/Bundle;

    .end local v14           #bundle:Landroid/os/Bundle;
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 138
    .restart local v14       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, v46

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 141
    :cond_5
    invoke-virtual {v14}, Landroid/os/Bundle;->clear()V

    .line 143
    if-eqz p7, :cond_0

    if-eqz v46, :cond_0

    .line 144
    const-string v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/LayoutInflater;

    .line 146
    .local v28, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v47, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    aput v7, v47, v3

    .line 147
    .local v47, viewIndex:[I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    .line 150
    .local v37, pm:Landroid/content/pm/PackageManager;
    :goto_0
    invoke-virtual/range {v46 .. v46}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v7, 0x2

    if-le v3, v7, :cond_6

    .line 151
    const/4 v3, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    .line 154
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v41

    .line 155
    .local v41, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_7
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/Entity;

    .line 156
    .local v24, entity:Landroid/content/Entity;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v23

    .line 157
    .local v23, entValues:Landroid/content/ContentValues;
    const-string v3, "contact_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 158
    .local v5, contactId:J
    const-string v3, "account_type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, accountType:Ljava/lang/String;
    const-string v3, "data_set"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 160
    .local v20, dataSet:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/Entity$NamedContentValues;

    .line 161
    .local v42, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    .line 162
    .local v25, entryValues:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 163
    .local v35, mimetype:Ljava/lang/String;
    if-eqz v35, :cond_8

    .line 164
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v14, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eq v3, v7, :cond_8

    .line 166
    move-object/from16 v0, v41

    move-object/from16 v1, v20

    move-object/from16 v2, v35

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v21

    .line 168
    .local v21, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v21, :cond_8

    .line 170
    const-string v3, "_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 171
    .local v18, dataId:J
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v44

    .line 173
    .local v44, uri:Landroid/net/Uri;
    const-string v3, "is_super_primary"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_d

    const/16 v30, 0x1

    .line 175
    .local v30, isSuperPrimary:Z
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildActionString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v39

    .line 176
    .local v39, sLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v38

    .line 178
    .local v38, sData:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTabletPhoneEnabled()Z

    move-result v7

    if-ne v3, v7, :cond_e

    .line 181
    if-eqz v30, :cond_8

    .line 184
    const-string v3, "data2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 186
    :try_start_0
    const-string v3, "data2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 187
    .local v36, phoneType:I
    if-nez v36, :cond_9

    .line 188
    const-string v3, "data3"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 189
    const-string v3, "data3"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 190
    .local v17, customLabel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_9

    .line 191
    move-object/from16 v39, v17

    .line 198
    .end local v17           #customLabel:Ljava/lang/String;
    .end local v36           #phoneType:I
    :cond_9
    :goto_3
    move-object/from16 v4, v38

    .line 200
    .local v4, NUMBER:Ljava/lang/String;
    const v3, 0x7f03001b

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v45

    .line 201
    .local v45, v:Landroid/view/View;
    const v3, 0x7f07004a

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #button:Landroid/widget/Button;
    check-cast v15, Landroid/widget/Button;

    .line 202
    .restart local v15       #button:Landroid/widget/Button;
    if-eqz v15, :cond_a

    .line 203
    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    new-instance v3, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;-><init>(Ljava/lang/String;JLjava/lang/CharSequence;Landroid/app/Dialog;)V

    invoke-virtual {v15, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_a
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->addView(Landroid/view/ViewGroup;Landroid/view/View;[I)V

    .line 219
    const v3, 0x7f03001b

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v45

    .line 220
    const v3, 0x7f07004a

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #button:Landroid/widget/Button;
    check-cast v15, Landroid/widget/Button;

    .line 221
    .restart local v15       #button:Landroid/widget/Button;
    if-eqz v15, :cond_b

    .line 222
    const v3, 0x7f0a0141

    invoke-virtual {v15, v3}, Landroid/widget/Button;->setText(I)V

    .line 223
    new-instance v3, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v4, v0, v1}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$3;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v15, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :cond_b
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->addView(Landroid/view/ViewGroup;Landroid/view/View;[I)V

    .line 314
    .end local v4           #NUMBER:Ljava/lang/String;
    .end local v45           #v:Landroid/view/View;
    :cond_c
    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v14, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 173
    .end local v30           #isSuperPrimary:Z
    .end local v38           #sData:Ljava/lang/String;
    .end local v39           #sLabel:Ljava/lang/String;
    :cond_d
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 235
    .restart local v30       #isSuperPrimary:Z
    .restart local v38       #sData:Ljava/lang/String;
    .restart local v39       #sLabel:Ljava/lang/String;
    :cond_e
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-wide/high16 v7, 0x400c

    invoke-static {v7, v8}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 239
    if-eqz v30, :cond_8

    .line 242
    const-string v3, "data2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 244
    :try_start_1
    const-string v3, "data2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 245
    .local v32, mailType:I
    if-nez v32, :cond_f

    .line 246
    const-string v3, "data3"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 247
    const-string v3, "data3"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 248
    .restart local v17       #customLabel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_f

    .line 249
    move-object/from16 v39, v17

    .line 256
    .end local v17           #customLabel:Ljava/lang/String;
    .end local v32           #mailType:I
    :cond_f
    :goto_5
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v9, v38

    .line 259
    .local v9, EMAIL:Ljava/lang/String;
    :goto_6
    const v3, 0x7f03001b

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v45

    .line 260
    .restart local v45       #v:Landroid/view/View;
    const v3, 0x7f07004a

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #button:Landroid/widget/Button;
    check-cast v15, Landroid/widget/Button;

    .line 261
    .restart local v15       #button:Landroid/widget/Button;
    if-eqz v15, :cond_10

    .line 262
    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 263
    new-instance v3, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v9, v0, v1}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$4;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v15, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    :cond_10
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->addView(Landroid/view/ViewGroup;Landroid/view/View;[I)V

    goto/16 :goto_4

    .line 256
    .end local v9           #EMAIL:Ljava/lang/String;
    .end local v45           #v:Landroid/view/View;
    :cond_11
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-static {v3, v0}, Lcom/htc/util/mail/MailUtils;->getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 280
    :cond_12
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/android/htccontacts/model/DataKind;->actionBodySocial:Z

    if-eqz v3, :cond_c

    if-eqz v37, :cond_c

    if-nez p2, :cond_c

    .line 281
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 282
    .local v29, intent:Landroid/content/Intent;
    const v3, 0x10080

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v33

    .line 283
    .local v33, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v33, :cond_c

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 284
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 285
    .local v13, bestResolve:Landroid/content/pm/ResolveInfo;
    iget-object v11, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 286
    .local v11, activityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 287
    .local v12, activityLabel:Ljava/lang/CharSequence;
    if-eqz v11, :cond_13

    .line 288
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v34, v0

    .line 289
    .local v34, metaData:Landroid/os/Bundle;
    if-eqz v34, :cond_13

    .line 290
    const-string v3, "com.android.htccontacts.BirthdayGreetingMessageId"

    const/4 v7, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 291
    .local v31, labelResId:I
    iget-object v3, v11, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 292
    iget-object v3, v11, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 297
    .end local v31           #labelResId:I
    .end local v34           #metaData:Landroid/os/Bundle;
    :cond_13
    const v3, 0x7f03001b

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v45

    .line 298
    .restart local v45       #v:Landroid/view/View;
    const v3, 0x7f07004a

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #button:Landroid/widget/Button;
    check-cast v15, Landroid/widget/Button;

    .line 299
    .restart local v15       #button:Landroid/widget/Button;
    if-eqz v15, :cond_15

    .line 300
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v12, v39

    .end local v12           #activityLabel:Ljava/lang/CharSequence;
    :cond_14
    invoke-virtual {v15, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    new-instance v3, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-direct {v3, v0, v1, v2}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$5;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Dialog;)V

    invoke-virtual {v15, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    :cond_15
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->addView(Landroid/view/ViewGroup;Landroid/view/View;[I)V

    goto/16 :goto_4

    .line 253
    .end local v11           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v13           #bestResolve:Landroid/content/pm/ResolveInfo;
    .end local v29           #intent:Landroid/content/Intent;
    .end local v33           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v45           #v:Landroid/view/View;
    :catch_0
    move-exception v3

    goto/16 :goto_5

    .line 195
    :catch_1
    move-exception v3

    goto/16 :goto_3
.end method
