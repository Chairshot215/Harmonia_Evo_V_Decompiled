.class Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;
.super Ljava/lang/Object;
.source "AlbumSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/AlbumSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferenceMusicEnableClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "pre"

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    #getter for: Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->access$000(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-result-object v0

    const-string v1, "slide_show_music_enable_setting"

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    #getter for: Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->access$100(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 260
    :goto_0
    return v2

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    #getter for: Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->access$100(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method
