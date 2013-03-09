.class public Lcom/android/settings/quicklaunch/QuickLaunchSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "QuickLaunchSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;
    }
.end annotation


# static fields
.field private static final CLEAR_DIALOG_BOOKMARK_TITLE:Ljava/lang/String; = "CLEAR_DIALOG_BOOKMARK_TITLE"

.field private static final CLEAR_DIALOG_SHORTCUT:Ljava/lang/String; = "CLEAR_DIALOG_SHORTCUT"

.field private static final COLUMN_INTENT:I = 0x2

.field private static final COLUMN_SHORTCUT:I = 0x0

.field private static final COLUMN_TITLE:I = 0x1

.field private static final DEFAULT_BOOKMARK_FOLDER:Ljava/lang/String; = "@quicklaunch"

.field private static final DIALOG_CLEAR_SHORTCUT:I = 0x0

.field private static final KEY_SHORTCUT_CATEGORY:Ljava/lang/String; = "shortcut_category"

.field private static final REQUEST_PICK_BOOKMARK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QuickLaunchSettings"

.field private static final sProjection:[Ljava/lang/String; = null

.field private static final sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# instance fields
.field private mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

.field private mBookmarksCursor:Landroid/database/Cursor;

.field private mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

.field private mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

.field private mClearDialogShortcut:C

.field private mShortcutGroup:Lcom/htc/preference/HtcPreferenceGroup;

.field private mShortcutToPreference:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/quicklaunch/ShortcutPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/quicklaunch/QuickLaunchSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    return-void
.end method

.method private clearShortcut(C)V
    .locals 6
    .parameter "shortcut"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method private createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;
    .locals 2
    .parameter "shortcut"

    .prologue
    .line 257
    new-instance v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;-><init>(Landroid/content/Context;C)V

    .line 258
    .local v0, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 259
    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    return-object v0
.end method

.method private getOrCreatePreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;
    .locals 4
    .parameter "shortcut"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .line 248
    .local v0, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    if-eqz v0, :cond_0

    .line 252
    .end local v0           #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    :goto_0
    return-object v0

    .line 251
    .restart local v0       #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    :cond_0
    const-string v1, "QuickLaunchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', creating preference anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    move-result-object v0

    goto :goto_0
.end method

.method private initShortcutPreferences()V
    .locals 5

    .prologue
    .line 266
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 267
    .local v3, shortcutSeen:Landroid/util/SparseBooleanArray;
    const/4 v4, -0x1

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 270
    .local v1, keyMap:Landroid/view/KeyCharacterMap;
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, keyCode:I
    :goto_0
    if-ltz v0, :cond_2

    .line 272
    invoke-virtual {v1, v0}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 273
    .local v2, shortcut:C
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 279
    invoke-direct {p0, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    goto :goto_1

    .line 281
    .end local v2           #shortcut:C
    :cond_2
    return-void
.end method

.method private declared-synchronized refreshShortcuts()V
    .locals 17

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .local v1, c:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 356
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v13

    if-nez v13, :cond_1

    .line 291
    const-string v13, "QuickLaunchSettings"

    const-string v14, "Could not requery cursor when refreshing shortcuts."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    .end local v1           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 300
    .restart local v1       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 301
    .local v8, noLongerBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 302
    .local v7, newBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 303
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-char v13, v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    .line 304
    .local v11, shortcut:C
    if-eqz v11, :cond_2

    .line 306
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getOrCreatePreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    move-result-object v10

    .line 307
    .local v10, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/provider/Settings$Bookmarks;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 314
    .local v12, title:Ljava/lang/CharSequence;
    const-string v13, "intent"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 315
    .local v5, intentColumn:I
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, intentUri:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 318
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    :try_start_3
    invoke-static {v6, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 319
    .local v4, intent:Landroid/content/Intent;
    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 320
    .local v3, info:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_3

    .line 321
    invoke-virtual {v3, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v12

    .line 327
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v10, v12}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    const v13, 0x7f0c0b6d

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 332
    const/4 v13, 0x1

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 333
    if-eqz v8, :cond_2

    .line 336
    const/4 v13, 0x0

    invoke-virtual {v8, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 340
    .end local v5           #intentColumn:I
    .end local v6           #intentUri:Ljava/lang/String;
    .end local v9           #packageManager:Landroid/content/pm/PackageManager;
    .end local v10           #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    .end local v11           #shortcut:C
    .end local v12           #title:Ljava/lang/CharSequence;
    :cond_4
    if-eqz v8, :cond_6

    .line 341
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    .local v2, i:I
    :goto_3
    if-ltz v2, :cond_6

    .line 342
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 344
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    int-to-char v11, v13

    .line 345
    .restart local v11       #shortcut:C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .line 346
    .restart local v10       #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    if-eqz v10, :cond_5

    .line 347
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 341
    .end local v10           #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    .end local v11           #shortcut:C
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 353
    .end local v2           #i:I
    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 355
    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 323
    .restart local v5       #intentColumn:I
    .restart local v6       #intentUri:Ljava/lang/String;
    .restart local v9       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v10       #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    .restart local v11       #shortcut:C
    .restart local v12       #title:Ljava/lang/CharSequence;
    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method private showClearDialog(Lcom/android/settings/quicklaunch/ShortcutPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->hasBookmark()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 177
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateShortcut(CLandroid/content/Intent;)V
    .locals 6
    .parameter "shortcut"
    .parameter "intent"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@quicklaunch"

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    .line 244
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 219
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 226
    if-nez p3, :cond_1

    .line 227
    const-string v1, "QuickLaunchSettings"

    const-string v2, "Result from bookmark picker does not have an intent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_1
    const-string v1, "com.android.settings.quicklaunch.SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    .line 232
    .local v0, shortcut:C
    invoke-direct {p0, v0, p3}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->updateShortcut(CLandroid/content/Intent;)V

    goto :goto_0

    .line 235
    .end local v0           #shortcut:C
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    iget-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 184
    iget-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->clearShortcut(C)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 187
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 188
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f05002b

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->addPreferencesFromResource(I)V

    .line 100
    const-string v0, "shortcut_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Lcom/htc/preference/HtcPreferenceGroup;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;-><init>(Lcom/android/settings/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    .line 103
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->initShortcutPreferences()V

    .line 104
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 106
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0b6e

    invoke-virtual {p0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b6f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b70

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b71

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    .line 212
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    instance-of v1, v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 214
    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    :goto_0
    return v1

    .line 213
    .restart local v0       #pref:Lcom/htc/preference/HtcPreference;
    :cond_0
    check-cast v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->showClearDialog(Lcom/android/settings/quicklaunch/ShortcutPreference;)V

    .line 214
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 197
    instance-of v3, p2, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 205
    :goto_0
    return v2

    :cond_0
    move-object v1, p2

    .line 200
    check-cast v1, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .line 201
    .local v1, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings.quicklaunch.SHORTCUT"

    invoke-virtual {v1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 165
    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    .line 166
    .local v0, alertDialog:Lcom/htc/widget/HtcAlertDialog;
    const v1, 0x7f0c0b6f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 128
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    .line 114
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 137
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    iget-char v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    return-void
.end method
