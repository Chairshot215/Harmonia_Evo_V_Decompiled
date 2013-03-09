.class public Lcom/android/settings/LocalePickerSetupWizardFragment;
.super Lcom/android/settings/LocalePicker;
.source "LocalePickerSetupWizardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalePickerSetupWizardFragment"


# instance fields
.field SelectionListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

.field am:Landroid/app/IActivityManager;

.field private info:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

.field mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioButton:I

.field mySelectlocale:Ljava/util/Locale;

.field private myselectPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/LocalePicker;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->myselectPosition:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mRadioButton:I

    .line 75
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->am:Landroid/app/IActivityManager;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocalePickerSetupWizardFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListSelectorBackground()I

    move-result v0

    return v0
.end method

.method private getListSelectorBackground()I
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "list_selector_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private initialize()V
    .locals 13

    .prologue
    .line 105
    const-string v0, "LocalePickerSetupWizardFragment"

    const-string v1, " initialize!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    .line 108
    .local v7, count:I
    new-array v0, v7, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->info:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 110
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->info:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aput-object v0, v1, v9

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040045

    const v4, 0x7f0800c9

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->info:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;-><init>(Lcom/android/settings/LocalePickerSetupWizardFragment;Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    .line 115
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->am:Landroid/app/IActivityManager;

    if-eqz v0, :cond_3

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->am:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 122
    .local v6, config:Landroid/content/res/Configuration;
    if-eqz v6, :cond_6

    .line 124
    iget-object v11, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 125
    .local v11, locale:Ljava/util/Locale;
    move v12, v7

    .line 126
    .local v12, n:I
    const/4 v8, -0x1

    .line 127
    .local v8, defValue:I
    const/4 v9, 0x0

    .line 129
    :goto_1
    if-ge v9, v12, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->info:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 134
    .local v10, list:Landroid/widget/ListView;
    const/16 v0, 0xa

    invoke-virtual {v10, v9, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 135
    iput v9, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->myselectPosition:I

    .line 136
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    iget v1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->myselectPosition:I

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->setSelect(I)V

    .line 145
    .end local v10           #list:Landroid/widget/ListView;
    :cond_1
    if-ne v9, v12, :cond_2

    const/4 v0, -0x1

    if-eq v8, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    if-eqz v0, :cond_2

    .line 147
    iput v8, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->myselectPosition:I

    .line 148
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    iget v1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->myselectPosition:I

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->setSelect(I)V

    .line 152
    :cond_2
    const-string v0, "LocalePickerSetupWizardFragment"

    const-string v1, "config != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v6           #config:Landroid/content/res/Configuration;
    .end local v8           #defValue:I
    .end local v11           #locale:Ljava/util/Locale;
    .end local v12           #n:I
    :cond_3
    :goto_2
    return-void

    .line 139
    .restart local v6       #config:Landroid/content/res/Configuration;
    .restart local v8       #defValue:I
    .restart local v11       #locale:Ljava/util/Locale;
    .restart local v12       #n:I
    :cond_4
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->info:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    move v8, v9

    .line 129
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 154
    .end local v8           #defValue:I
    .end local v11           #locale:Ljava/util/Locale;
    .end local v12           #n:I
    :cond_6
    const-string v0, "LocalePickerSetupWizardFragment"

    const-string v1, "config == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 157
    .end local v6           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 79
    const-string v0, "LocalePickerSetupWizardFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 88
    const-string v0, "LocalePickerSetupWizardFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/android/settings/LocalePickerSetupWizardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LocalePickerSetupWizardFragment$1;-><init>(Lcom/android/settings/LocalePickerSetupWizardFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 100
    const v0, 0x7f040047

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->setSelect(I)V

    .line 169
    :cond_0
    iput p3, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->myselectPosition:I

    .line 170
    const-string v0, "LocalePickerSetupWizardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public onNextBtnclick()V
    .locals 3

    .prologue
    .line 227
    const-string v0, "LocalePickerSetupWizardFragment"

    const-string v1, "onNextBtnclick : mySelectlocale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LocaleChange"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->myselectPosition:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->myselectPosition:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->handleIMCustomizedEx(Ljava/util/Locale;)Z

    .line 232
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/settings/LocalePicker;->onResume()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 177
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings/LocalePicker;->onStart()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->initialize()V

    .line 183
    return-void
.end method
