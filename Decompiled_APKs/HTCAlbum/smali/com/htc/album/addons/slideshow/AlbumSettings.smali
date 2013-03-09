.class public Lcom/htc/album/addons/slideshow/AlbumSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "AlbumSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;,
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;,
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;
    }
.end annotation


# static fields
.field public static final SLIDE_SHOW_FOLDER_PICKER_KEY:Ljava/lang/String; = "slide_show_folder_picker_setting"

.field public static final SLIDE_SHOW_MUSIC_DISPLAY_KEY:Ljava/lang/String; = "slide_show_music_display"

.field public static final SLIDE_SHOW_MUSIC_ENABLE_KEY:Ljava/lang/String; = "slide_show_music_enable_setting"

.field public static final SLIDE_SHOW_MUSIC_FILE_PATH_KEY:Ljava/lang/String; = "slide_show_music_file_path"

.field public static final SLIDE_SHOW_MUSIC_PICKER_KEY:Ljava/lang/String; = "slide_show_music_picker_setting"

.field public static final SLIDE_SHOW_ORIENTATION_KEY:Ljava/lang/String; = "slide_show_orientation_setting"

.field public static final SLIDE_SHOW_REPEAT_KEY:Ljava/lang/String; = "slide_show_repeat_setting"

.field public static final SLIDE_SHOW_SHUFFLE_KEY:Ljava/lang/String; = "slide_show_shuffle_setting"

.field public static final SLIDE_SHOW_SPEED_KEY:Ljava/lang/String; = "slide_show_duration_setting"

.field public static final SLIDE_SHOW_TRANS_KEY:Ljava/lang/String; = "slide_show_transition_setting"

.field private static final TAG:Ljava/lang/String; = "AlbumSettings"

.field private static final mFolderPickerRequestCode:I = 0xd673

.field private static final mMusicPickerRequestCode:I = 0x18605


# instance fields
.field private mCurrentMode:Ljava/lang/String;

.field private mFolderPicker:Lcom/htc/preference/HtcPreference;

.field private mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mMusicPickerPre:Lcom/htc/preference/HtcPreference;

.field private mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field private mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

.field private mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

.field private mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSlideshowShufflePref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V
    .locals 3
    .parameter "prefernce"
    .parameter "value"

    .prologue
    .line 303
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 306
    .local v1, seq:[Ljava/lang/CharSequence;
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    .end local v1           #seq:[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strFolderType"

    .prologue
    const/4 v4, 0x2

    .line 355
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 370
    :goto_0
    return-object v2

    .line 357
    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 358
    .local v0, ret:[Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, type:Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 361
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 363
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 365
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_1

    .line 370
    :cond_3
    aget-object v2, v0, v4

    goto :goto_0
.end method

.method public getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "contentUri"

    .prologue
    .line 202
    if-nez p1, :cond_1

    const/4 v11, 0x0

    .line 248
    :cond_0
    :goto_0
    return-object v11

    .line 203
    :cond_1
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 204
    .local v2, proj:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 205
    .local v12, strFilePath:Ljava/lang/String;
    const/4 v11, 0x0

    .line 206
    .local v11, strDisplay:Ljava/lang/String;
    const/4 v13, 0x0

    .line 208
    .local v13, strTemp:Ljava/lang/String;
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: Query Cursor start !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 212
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 214
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 218
    .local v6, column_index:I
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 219
    if-eqz v13, :cond_2

    move-object v12, v13

    .line 223
    :cond_2
    const/4 v13, 0x0

    .line 224
    const-string v0, "album"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 225
    .local v7, column_index_album:I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 227
    const-string v0, "title"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 228
    .local v8, column_index_title:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 229
    if-eqz v13, :cond_3

    move-object v11, v13

    .line 232
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v6           #column_index:I
    .end local v7           #column_index_album:I
    .end local v8           #column_index_title:I
    :cond_4
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: Query Cursor end !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz v11, :cond_5

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :cond_5
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: cursor.getString NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 235
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 236
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: cursor.getString Exception !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 169
    if-ne v6, p2, :cond_2

    const v5, 0x18605

    if-ne p1, v5, :cond_2

    .line 170
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, selectSoundUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, csValue:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 174
    .local v2, strFileName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_1

    .line 179
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_picker_setting"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v0       #csValue:Ljava/lang/CharSequence;
    .restart local v1       #selectSoundUri:Landroid/net/Uri;
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 190
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_2
    if-ne v6, p2, :cond_0

    const v5, 0xd673

    if-ne p1, v5, :cond_0

    .line 191
    const-string v5, "folder_type"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, strFolderType:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 194
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_folder_picker_setting"

    invoke-virtual {v5, v6, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, strFolderName:Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "slideshow_setting_mode"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    .line 70
    new-instance v8, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 71
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v8, p0, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    .line 73
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "album_mode"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 74
    const v8, 0x7f050001

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/AlbumSettings;->addPreferencesFromResource(I)V

    .line 86
    :goto_0
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_repeat_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, strKey:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 89
    :cond_0
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_shuffle_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowShufflePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 92
    :cond_1
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_orientation_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcListPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    .line 95
    :cond_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_transition_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcListPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    .line 98
    :cond_3
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_duration_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    if-eqz v5, :cond_4

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcListPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    .line 102
    :cond_4
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_music_enable_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 105
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_music_picker_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    .line 109
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    invoke-virtual {v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    .line 113
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v8, v11}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 114
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v8, v11}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 115
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v8, v11}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 117
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 119
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v11, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;

    invoke-direct {v11, p0}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 121
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    new-instance v11, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;

    invoke-direct {v11, p0}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 122
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    new-instance v11, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;

    invoke-direct {v11, p0}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 125
    :cond_5
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateOrientationPref(I)V

    .line 128
    const/4 v6, 0x0

    .line 129
    .local v6, strSunnary:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_music_picker_setting"

    const-string v12, ""

    invoke-virtual {v8, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 131
    .local v7, uriTemp:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 132
    .local v2, strFilename:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    if-eqz v8, :cond_a

    move v1, v9

    .line 136
    .local v1, isEnableMusic:Z
    :goto_1
    if-eqz v1, :cond_6

    .line 138
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "slide_show_music_enable_setting"

    invoke-virtual {v8, v11, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    .local v0, bEnableMusic:Z
    if-ne v0, v9, :cond_b

    if-eqz v2, :cond_b

    .line 141
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 142
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 143
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    .end local v0           #bEnableMusic:Z
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    if-eqz v8, :cond_7

    .line 162
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "slide_show_folder_picker_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, strFolderType:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, strFolderName:Ljava/lang/String;
    if-eqz v3, :cond_7

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    .end local v1           #isEnableMusic:Z
    .end local v2           #strFilename:Ljava/lang/String;
    .end local v3           #strFolderName:Ljava/lang/String;
    .end local v4           #strFolderType:Ljava/lang/String;
    .end local v5           #strKey:Ljava/lang/String;
    .end local v6           #strSunnary:Ljava/lang/String;
    .end local v7           #uriTemp:Landroid/net/Uri;
    :cond_7
    :goto_3
    return-void

    .line 75
    :cond_8
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "dock_mode"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 76
    const v8, 0x7f050002

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/AlbumSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 79
    :cond_9
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->finish()V

    .line 80
    const-string v8, "AlbumSettings"

    const-string v9, "[HTCAlbum][AlbumSetting][onCreate]: unknow mode !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .restart local v2       #strFilename:Ljava/lang/String;
    .restart local v5       #strKey:Ljava/lang/String;
    .restart local v6       #strSunnary:Ljava/lang/String;
    .restart local v7       #uriTemp:Landroid/net/Uri;
    :cond_a
    move v1, v10

    .line 135
    goto :goto_1

    .line 145
    .restart local v0       #bEnableMusic:Z
    .restart local v1       #isEnableMusic:Z
    :cond_b
    if-eqz v2, :cond_c

    .line 147
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 148
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 149
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 153
    :cond_c
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 154
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 155
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    const v9, 0x7f0b001c

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 316
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 317
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 332
    const-string v0, "AlbumSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 336
    check-cast v0, Lcom/htc/preference/HtcListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateOrientationPref(I)V

    .line 343
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 323
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 329
    return-void
.end method

.method public updateOrientationPref(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 352
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0
.end method
