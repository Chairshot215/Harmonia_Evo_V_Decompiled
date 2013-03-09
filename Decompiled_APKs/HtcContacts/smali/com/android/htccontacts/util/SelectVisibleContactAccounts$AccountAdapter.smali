.class final Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectVisibleContactAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/SelectVisibleContactAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccountAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;",
        ">;"
    }
.end annotation


# instance fields
.field public mAccounts:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 184
    iput-object p3, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->mAccounts:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    .line 185
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 186
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    if-nez v0, :cond_0

    .line 215
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    .locals 1
    .parameter "position"

    .prologue
    .line 222
    sget-boolean v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    .line 227
    :goto_0
    return-object v0

    .line 225
    :cond_0
    if-nez p1, :cond_1

    .line 226
    new-instance v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    invoke-direct {v0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;-><init>()V

    goto :goto_0

    .line 227
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->getItem(I)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 190
    sget-boolean v1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    if-eqz p1, :cond_0

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMsgView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 240
    if-nez p2, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03006e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 244
    :cond_0
    const v1, 0x7f0700fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    .local v0, desc:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const v1, 0x7f0a0399

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    :goto_0
    return-object p2

    .line 248
    :cond_1
    const v1, 0x7f0a0398

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getPosition(Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 233
    sget-boolean v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    if-nez v0, :cond_0

    .line 234
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    check-cast p1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->getPosition(Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 256
    sget-boolean v7, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    if-eqz v7, :cond_0

    if-nez p1, :cond_0

    .line 257
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->getMsgView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 297
    :goto_0
    return-object v7

    .line 259
    :cond_0
    if-nez p2, :cond_1

    .line 260
    iget-object v7, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03006d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 264
    :cond_1
    const v7, 0x7f07003b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 265
    .local v5, text1:Landroid/widget/TextView;
    const v7, 0x7f07003c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 266
    .local v6, text2:Landroid/widget/TextView;
    const v7, 0x7f07003e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 267
    .local v2, checkbox:Landroid/widget/CheckBox;
    const v7, 0x7f070100

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 269
    .local v1, accountView:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->getItem(I)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    move-result-object v0

    .line 270
    .local v0, account:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 272
    .local v3, context:Landroid/content/Context;
    new-instance v7, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$1;

    invoke-direct {v7, p0, v2, v0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$1;-><init>(Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;Landroid/widget/CheckBox;Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-boolean v7, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mVisible:Z

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 280
    new-instance v7, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$2;

    invoke-direct {v7, p0, v0, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter$2;-><init>(Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$200()Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v7

    iget-object v8, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mDataSet:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v4

    .line 289
    .local v4, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const-string v7, "com.htc.android.pcsc"

    iget-object v8, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.anddroid.contacts.sim"

    iget-object v8, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move-object v7, p2

    .line 297
    goto/16 :goto_0

    .line 294
    :cond_3
    iget-object v7, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x2

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 199
    sget-boolean v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
