.class Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$2;
.super Ljava/lang/Object;
.source "NewAlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    #calls: Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createFailed()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->access$100(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    .line 88
    return-void
.end method
