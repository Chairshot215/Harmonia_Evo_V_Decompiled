.class public Lcom/android/settings/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserDictionarySettings$MyAdapter;
    }
.end annotation


# static fields
.field private static final DELETE_SELECTION:Ljava/lang/String; = "word=?"

.field private static final DIALOG_ADD_OR_EDIT:I = 0x0

.field private static final EXTRA_WORD:Ljava/lang/String; = "word"

.field private static final FREQUENCY_FOR_USER_DICTIONARY_ADDS:I = 0xfa

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_WORD:I = 0x1

.field private static final INSTANCE_KEY_ADDED_WORD:Ljava/lang/String; = "DIALOG_ADDED_WORD"

.field private static final INSTANCE_KEY_DIALOG_EDITING_WORD:Ljava/lang/String; = "DIALOG_EDITING_WORD"

.field private static final OPTIONS_MENU_ADD:I = 0x1

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_SELECTION:Ljava/lang/String; = "locale=?"

.field private static final QUERY_SELECTION_ALL_LOCALES:Ljava/lang/String; = "locale is null"

.field private static final TAG:Ljava/lang/String; = "UserDictionarySettings"


# instance fields
.field private mAddedWordAlready:Z

.field private mAutoReturn:Z

.field private mCursor:Landroid/database/Cursor;

.field private mDialogEditingWord:Ljava/lang/String;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field protected mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UserDictionarySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/UserDictionarySettings;->mAutoReturn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/UserDictionarySettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/UserDictionarySettings;->onAddOrEditFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/UserDictionarySettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 192
    new-instance v0, Lcom/android/settings/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040096

    iget-object v3, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "word"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/settings/UserDictionarySettings;)V

    return-object v0

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x9ct 0x1t 0x8t 0x7ft
    .end array-data
.end method

.method private createCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "locale"

    .prologue
    .line 178
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale is null"

    const/4 v4, 0x0

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 184
    :cond_0
    if-eqz p1, :cond_1

    move-object v6, p1

    .line 185
    .local v6, queryLocale:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 184
    .end local v6           #queryLocale:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private deleteWord(Ljava/lang/String;)V
    .locals 5
    .parameter "word"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "word=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 230
    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onAddOrEditFinished(Ljava/lang/String;)V
    .locals 6
    .parameter "word"

    .prologue
    const/16 v5, 0xfa

    const/4 v4, 0x1

    .line 277
    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v4}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    if-nez v1, :cond_3

    .line 304
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t requery on already-closed cursor."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_1
    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v5, v3}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 298
    .local v0, prevLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v4}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    .line 301
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    goto :goto_0

    .line 306
    .end local v0           #prevLocale:Ljava/util/Locale;
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    .line 307
    return-void
.end method

.method private showAddOrEditDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "editingWord"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->showDialog(I)V

    .line 224
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "UserDictionarySettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 273
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 274
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 109
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 112
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    move-object v6, v7

    .line 115
    .local v6, localeFromIntent:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_2

    move-object v5, v7

    .line 120
    .local v5, localeFromArguments:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_3

    .line 121
    move-object v4, v5

    .line 128
    .local v4, locale:Ljava/lang/String;
    :goto_2
    iput-object v4, p0, Lcom/android/settings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 129
    invoke-direct {p0, v4}, Lcom/android/settings/UserDictionarySettings;->createCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, emptyView:Landroid/widget/TextView;
    const v7, 0x7f0c0b63

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 134
    .local v3, listView:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/settings/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 136
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0, v9}, Lcom/android/settings/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string v7, "DIALOG_EDITING_WORD"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 142
    const-string v7, "DIALOG_ADDED_WORD"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    .line 144
    :cond_0
    return-void

    .line 112
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v1           #emptyView:Landroid/widget/TextView;
    .end local v3           #listView:Landroid/widget/ListView;
    .end local v4           #locale:Ljava/lang/String;
    .end local v5           #localeFromArguments:Ljava/lang/String;
    .end local v6           #localeFromIntent:Ljava/lang/String;
    :cond_1
    const-string v8, "locale"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 116
    .restart local v0       #arguments:Landroid/os/Bundle;
    .restart local v6       #localeFromIntent:Ljava/lang/String;
    :cond_2
    const-string v7, "locale"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 122
    .restart local v5       #localeFromArguments:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 123
    move-object v4, v6

    .restart local v4       #locale:Ljava/lang/String;
    goto :goto_2

    .line 125
    .end local v4           #locale:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #locale:Ljava/lang/String;
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 239
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v3, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v3, dialogBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 241
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040035

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 242
    .local v1, content:Landroid/view/View;
    const v6, 0x7f080082

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 243
    .local v4, editText:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const v6, 0x10001

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 248
    iget-object v6, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v6, :cond_0

    const v6, 0x7f0c0b60

    :goto_0
    invoke-virtual {v3, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/UserDictionarySettings$2;

    invoke-direct {v8, p0, v4, v0}, Lcom/android/settings/UserDictionarySettings$2;-><init>(Lcom/android/settings/UserDictionarySettings;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/android/settings/UserDictionarySettings$1;

    invoke-direct {v8, p0, v0}, Lcom/android/settings/UserDictionarySettings$1;-><init>(Lcom/android/settings/UserDictionarySettings;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v2

    .line 263
    .local v2, dialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 265
    return-object v2

    .line 248
    .end local v2           #dialog:Lcom/htc/dialog/HtcAlertDialog;
    :cond_0
    const v6, 0x7f0c0b5f

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 208
    const/4 v1, 0x1

    const v2, 0x7f0c0b5e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020068

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 211
    .local v0, actionItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 213
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const v0, 0x1090075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 200
    invoke-direct {p0, p3}, Lcom/android/settings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, word:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 150
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    const-string v2, "word"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, word:Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/UserDictionarySettings;->mAutoReturn:Z

    .line 154
    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0, v1}, Lcom/android/settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 158
    .end local v1           #word:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "DIALOG_EDITING_WORD"

    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "DIALOG_ADDED_WORD"

    iget-boolean v1, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    return-void
.end method
