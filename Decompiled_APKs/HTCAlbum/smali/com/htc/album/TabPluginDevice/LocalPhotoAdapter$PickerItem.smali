.class Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PickerItem;
.super Ljava/lang/Object;
.source "LocalPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PickerItem"
.end annotation


# instance fields
.field public mCachedView:Lcom/htc/opensense2/widget/GalleryImageView;

.field public mIsPicked:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PickerItem;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PickerItem;->mIsPicked:Z

    .line 1576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PickerItem;->mCachedView:Lcom/htc/opensense2/widget/GalleryImageView;

    return-void
.end method
