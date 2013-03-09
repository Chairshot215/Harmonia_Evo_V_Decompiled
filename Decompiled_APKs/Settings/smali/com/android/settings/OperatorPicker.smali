.class public Lcom/android/settings/OperatorPicker;
.super Landroid/app/ListActivity;
.source "OperatorPicker.java"


# static fields
.field static final TAG:Ljava/lang/String; = "OperatorPicker"


# instance fields
.field protected mOperators:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0002:Z

    if-nez v0, :cond_0

    .line 145
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.apn.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getItemLayout()I
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f040052

    return v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f040051

    return v0
.end method

.method protected getOperatorAdapter()Landroid/widget/ListAdapter;
    .locals 13

    .prologue
    .line 66
    const-string v9, "OperatorPicker"

    const-string v10, "fillList"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "numeric = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings/OperatorPicker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, where:Ljava/lang/String;
    const-string v7, "name ASC"

    .line 86
    .local v7, sortOrder:Ljava/lang/String;
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x12

    if-eq v9, v10, :cond_0

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x32

    if-ne v9, v10, :cond_1

    .line 90
    :cond_0
    const/4 v7, 0x0

    .line 92
    :cond_1
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "operator"

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10, v8, v7}, Lcom/android/settings/OperatorPicker;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 96
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v6, opnamelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_6

    .line 98
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_5

    .line 101
    const-string v9, "_id"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, id:Ljava/lang/String;
    const-string v9, "operator"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, op:Ljava/lang/String;
    const/4 v4, 0x0

    .line 105
    .local v4, isExisted:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 106
    if-eqz v5, :cond_4

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 107
    const/4 v4, 0x1

    .line 112
    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    .line 113
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 105
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v2           #i:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #isExisted:Z
    .end local v5           #op:Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/settings/OperatorPicker;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 121
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    .line 122
    iget-object v9, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getItemLayout()I

    move-result v9

    const v10, 0x7f0800ea

    iget-object v11, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    invoke-direct {v0, p0, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 127
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0c039b

    invoke-virtual {p0, v0}, Lcom/android/settings/OperatorPicker;->setTitle(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getLayout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/OperatorPicker;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getOperatorAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    iget-object v2, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    long-to-int v3, p4

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->finish()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 63
    return-void
.end method
