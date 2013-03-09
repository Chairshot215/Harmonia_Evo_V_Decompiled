.class Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;
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
    name = "PreferenceFolderPickerClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    const v2, 0xd673

    invoke-virtual {v1, v0, v2}, Lcom/htc/album/addons/slideshow/AlbumSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 297
    const/4 v1, 0x0

    return v1
.end method
