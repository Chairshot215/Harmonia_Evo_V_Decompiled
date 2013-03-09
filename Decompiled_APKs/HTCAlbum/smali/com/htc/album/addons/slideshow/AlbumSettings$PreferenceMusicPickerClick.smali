.class Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;
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
    name = "PreferenceMusicPickerClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 273
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    const v2, 0x18605

    invoke-virtual {v1, v0, v2}, Lcom/htc/album/addons/slideshow/AlbumSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 276
    const/4 v1, 0x0

    return v1
.end method
