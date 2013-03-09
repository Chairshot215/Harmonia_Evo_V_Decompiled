.class public Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
.super Ljava/lang/Object;
.source "SlideshowSetingManager.java"


# static fields
.field public static final EXTRA_KEY_SLIDESHOW_MODE:Ljava/lang/String; = "slideshow_setting_mode"

.field public static final SETTING_MODE_ALBUM:Ljava/lang/String; = "album_mode"

.field public static final SETTING_MODE_DOCK:Ljava/lang/String; = "dock_mode"

.field public static final SETTING_MODE_UNKNOW:Ljava/lang/String; = "unknow_mode"

.field public static final TRANSITION_FADE:I = 0x0

.field public static final TRANSITION_KENBUMS:I = 0x7

.field public static final TRANSITION_NONE:I = -0x2

.field public static final TRANSITION_RANDOM:I = 0x1

.field public static final TRANSITION_ROTATE:I = 0x5

.field public static final TRANSITION_SLIDE:I = 0x1


# instance fields
.field public final KEY_FOLDER:Ljava/lang/String;

.field public final KEY_MUSIC_ENABLE:Ljava/lang/String;

.field public final KEY_MUSIC_PICKER:Ljava/lang/String;

.field public final KEY_ORIENTATION:Ljava/lang/String;

.field public final KEY_REPEATG:Ljava/lang/String;

.field public final KEY_SHUFFLE:Ljava/lang/String;

.field public final KEY_SPEED:Ljava/lang/String;

.field public final KEY_TRANSITION:Ljava/lang/String;

.field public final LOG_TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCurrentMode:Ljava/lang/String;

.field mIsInit:Z

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "SlideshowSetingManager"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->LOG_TAG:Ljava/lang/String;

    .line 16
    const-string v0, "slide_show_repeat_setting"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->KEY_REPEATG:Ljava/lang/String;

    .line 17
    const-string v0, "slide_show_orientation_setting"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->KEY_ORIENTATION:Ljava/lang/String;

    .line 18
    const-string v0, "slide_show_transition_setting"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->KEY_TRANSITION:Ljava/lang/String;

    .line 19
    const-string v0, "slide_show_duration_setting"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->KEY_SPEED:Ljava/lang/String;

    .line 20
    const-string v0, "slide_show_shuffle_setting"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->KEY_SHUFFLE:Ljava/lang/String;

    .line 31
    const-string v0, "slide_show_music_enable_setting"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->KEY_MUSIC_ENABLE:Ljava/lang/String;

    .line 32
    const-string v0, "slide_show_music_picker_setting"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->KEY_MUSIC_PICKER:Ljava/lang/String;

    .line 35
    const-string v0, "slide_show_folder_picker_setting"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->KEY_FOLDER:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    .line 44
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "strIndex"
    .parameter "bDefault"

    .prologue
    .line 116
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 119
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 117
    .restart local p2
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 118
    .local v0, index:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getCurModeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strIndex"

    .prologue
    .line 92
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 94
    .local v0, index:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    goto :goto_0
.end method

.method public getCurrentMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "strIndex"
    .parameter "nDefault"

    .prologue
    .line 108
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 111
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 109
    .restart local p2
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 110
    .local v0, index:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strIndex"
    .parameter "strDefault"

    .prologue
    .line 100
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 103
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 101
    .restart local p2
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 102
    .local v0, index:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "SettingMode"

    .prologue
    const/4 v1, 0x1

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    .line 57
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    .line 81
    :goto_0
    return v0

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 63
    const-string v0, "album_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    .line 67
    const-string v0, "SlideshowSetingManager"

    const-string v1, "[HTCAlbum][SlideshowSettingManager][initSlideshowSetting]: Run Album Mode Setting."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    goto :goto_0

    .line 69
    :cond_2
    const-string v0, "dock_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    const-string v0, "dock_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    .line 73
    const-string v0, "SlideshowSetingManager"

    const-string v1, "[HTCAlbum][SlideshowSettingManager][initSlideshowSetting]: Run Dock Mode Setting."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_3
    const-string v0, "unknow_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    .line 78
    const-string v0, "SlideshowSetingManager"

    const-string v1, "[HTCAlbum][SlideshowSettingManager][initSlideshowSetting]: Run unknow Mode Setting."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "strIndex"
    .parameter "value"

    .prologue
    .line 124
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mIsInit:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 132
    :goto_0
    return v2

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 128
    .local v1, index:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    const/4 v2, 0x1

    goto :goto_0
.end method
