.class Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler$2;
.super Ljava/lang/Object;
.source "PicasaAlbumHandler.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->album:Lcom/google/android/apps/uploader/clients/picasa/Album;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->access$000(Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;)Lcom/google/android/apps/uploader/clients/picasa/Album;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/clients/picasa/Album;->setId(Ljava/lang/String;)V

    .line 75
    return-void
.end method
