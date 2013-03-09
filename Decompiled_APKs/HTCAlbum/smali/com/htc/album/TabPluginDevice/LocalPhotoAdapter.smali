.class public Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
.super Lcom/htc/opensense2/album/AdapterBase;
.source "LocalPhotoAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PickerItem;,
        Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;,
        Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;,
        Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;,
        Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;,
        Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;,
        Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;,
        Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final THUMBNAIL_SIZE:I = 0x1


# instance fields
.field private mBackupSize:I

.field private mCacheMode:I

.field private mFolderId:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mFolderType:Ljava/lang/String;

.field private mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

.field private mGrayFilmstripVideo:Landroid/graphics/Bitmap;

.field private mGrayGrid:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mHoldThread:Z

.field private mImageDecodedListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;

.field protected mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mMediaDataChangeListener:Lcom/htc/sunny2/IMediaList$ChangeListener;

.field private mMediaType:I

.field private mNotifyDataChangeListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;

.field private mObjRequest:Ljava/lang/Object;

.field private mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

.field private mPickerIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerMode:I

.field private mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

.field private mRefreshFlag:Z

.field private mStartDeleting:Z

.field private mStopDeleteAll:Z

.field private mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

.field private mUploadEditorMode:Z

.field private mViewSingleImage:Z

.field private mVisibleBegin:I

.field private mVisibleCenter:I

.field private mVisibleEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 8
    .parameter "ctx"
    .parameter "handler"
    .parameter "mediaType"
    .parameter "obj"
    .parameter "cacheSize"

    .prologue
    .line 709
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILjava/lang/Object;IZLjava/lang/Object;)V

    .line 710
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;ILjava/lang/Object;IZLjava/lang/Object;)V
    .locals 6
    .parameter "activity"
    .parameter "hHandler"
    .parameter "nMediaType"
    .parameter "objRequest"
    .parameter "nCacheSize"
    .parameter "bEnableCache"
    .parameter "objExtra"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 713
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/AdapterBase;-><init>(Landroid/app/Activity;)V

    .line 1316
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHoldThread:Z

    .line 1580
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    .line 1581
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    .line 1585
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    .line 1586
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    .line 1587
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mImageDecodedListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;

    .line 1588
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderId:Ljava/lang/String;

    .line 1589
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderType:Ljava/lang/String;

    .line 1590
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderName:Ljava/lang/String;

    .line 1591
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mViewSingleImage:Z

    .line 1593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    .line 1594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    .line 1595
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerMode:I

    .line 1598
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaType:I

    .line 1599
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mUploadEditorMode:Z

    .line 1600
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;

    .line 1601
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mRefreshFlag:Z

    .line 1605
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mNotifyDataChangeListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;

    .line 1606
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    .line 1607
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStopDeleteAll:Z

    .line 1608
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mBackupSize:I

    .line 1609
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStartDeleting:Z

    .line 715
    iput-object p4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mObjRequest:Ljava/lang/Object;

    .line 716
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;

    .line 718
    const/4 v4, 0x0

    .line 719
    .local v4, filter:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mObjRequest:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mObjRequest:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "key_bucket_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderId:Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mObjRequest:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "folder_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderType:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mObjRequest:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "key_folder_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderName:Ljava/lang/String;

    .line 725
    if-eqz p1, :cond_0

    .line 726
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MimeTypeFilter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 728
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderType:Ljava/lang/String;

    move-object v0, p1

    move v1, p3

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/htc/album/Customizable/CustLocalPhotoAdapter;->getLocalIImageList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 730
    iput p3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaType:I

    .line 732
    if-eqz p6, :cond_1

    .line 733
    const/16 v0, 0x3e8

    invoke-virtual {p0, p5, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->enableCache(II)V

    .line 734
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/net/Uri;I)V
    .locals 6
    .parameter "activity"
    .parameter "handler"
    .parameter "uri"
    .parameter "cacheSize"

    .prologue
    .line 743
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/net/Uri;IZ)V

    .line 744
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/net/Uri;IZ)V
    .locals 11
    .parameter "activity"
    .parameter "handler"
    .parameter "uri"
    .parameter "cacheSize"
    .parameter "enableCache"

    .prologue
    .line 749
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/AdapterBase;-><init>(Landroid/app/Activity;)V

    .line 1316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHoldThread:Z

    .line 1580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    .line 1581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    .line 1585
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    .line 1586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    .line 1587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mImageDecodedListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;

    .line 1588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderId:Ljava/lang/String;

    .line 1589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderType:Ljava/lang/String;

    .line 1590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderName:Ljava/lang/String;

    .line 1591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mViewSingleImage:Z

    .line 1593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    .line 1594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    .line 1595
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerMode:I

    .line 1598
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaType:I

    .line 1599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mUploadEditorMode:Z

    .line 1600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;

    .line 1601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mRefreshFlag:Z

    .line 1605
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mNotifyDataChangeListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;

    .line 1606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    .line 1607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStopDeleteAll:Z

    .line 1608
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mBackupSize:I

    .line 1609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStartDeleting:Z

    .line 751
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mObjRequest:Ljava/lang/Object;

    .line 756
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_gallery_sort_key"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 758
    .local v10, sortOrder:Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v0, "ascending"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 759
    .local v9, sortAscending:Z
    :goto_0
    if-eqz v9, :cond_3

    const/4 v2, 0x1

    .line 762
    .local v2, sort:I
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mViewSingleImage:Z

    .line 764
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 765
    .local v6, caller:Landroid/content/Intent;
    const-string v0, "shareAndDelete"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 766
    .local v4, bShareAndDelete:Z
    const-string v0, "external_viewer"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v5, 0x1

    .line 768
    .local v5, filterAlbumArt:Z
    :goto_2
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mViewSingleImage:Z

    move-object v0, p3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 769
    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .line 770
    .local v8, mime:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    .line 772
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    .line 773
    .local v7, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v7, :cond_0

    instance-of v0, v7, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v0, :cond_0

    .line 775
    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    .end local v7           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v7, v8}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setMimeType(Ljava/lang/String;)V

    .line 778
    :cond_0
    if-eqz p5, :cond_1

    .line 781
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->enableCache(II)V

    .line 783
    :cond_1
    return-void

    .line 758
    .end local v2           #sort:I
    .end local v4           #bShareAndDelete:Z
    .end local v5           #filterAlbumArt:Z
    .end local v6           #caller:Landroid/content/Intent;
    .end local v8           #mime:Ljava/lang/String;
    .end local v9           #sortAscending:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 759
    .restart local v9       #sortAscending:Z
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 766
    .restart local v2       #sort:I
    .restart local v4       #bShareAndDelete:Z
    .restart local v6       #caller:Landroid/content/Intent;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/opensense2/album/util/ImageManager$IImageList;I)V
    .locals 6
    .parameter "activity"
    .parameter "handler"
    .parameter "list"
    .parameter "cacheSize"

    .prologue
    .line 787
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/opensense2/album/util/ImageManager$IImageList;IZ)V

    .line 788
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/opensense2/album/util/ImageManager$IImageList;IZ)V
    .locals 10
    .parameter "activity"
    .parameter "handler"
    .parameter "list"
    .parameter "cacheSize"
    .parameter "enableCache"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 793
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/AdapterBase;-><init>(Landroid/app/Activity;)V

    .line 1316
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHoldThread:Z

    .line 1580
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    .line 1581
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    .line 1585
    iput v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    .line 1586
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    .line 1587
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mImageDecodedListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;

    .line 1588
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderId:Ljava/lang/String;

    .line 1589
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderType:Ljava/lang/String;

    .line 1590
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderName:Ljava/lang/String;

    .line 1591
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mViewSingleImage:Z

    .line 1593
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    .line 1594
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    .line 1595
    iput v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerMode:I

    .line 1598
    iput v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaType:I

    .line 1599
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mUploadEditorMode:Z

    .line 1600
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;

    .line 1601
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mRefreshFlag:Z

    .line 1605
    new-instance v7, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;

    invoke-direct {v7, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mNotifyDataChangeListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;

    .line 1606
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    .line 1607
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStopDeleteAll:Z

    .line 1608
    iput v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mBackupSize:I

    .line 1609
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStartDeleting:Z

    .line 795
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;

    .line 797
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mObjRequest:Ljava/lang/Object;

    .line 800
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "pref_gallery_sort_key"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 802
    .local v4, sortOrder:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v7, "ascending"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 803
    .local v3, sortAscending:Z
    :goto_0
    if-eqz v3, :cond_0

    move v2, v5

    .line 806
    .local v2, sort:I
    :cond_0
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mViewSingleImage:Z

    .line 807
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "shareAndDelete"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 808
    .local v0, bShareAndDelete:Z
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "external_viewer"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    move v1, v5

    .line 810
    .local v1, filterAlbumArt:Z
    :goto_1
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 812
    if-eqz p5, :cond_1

    .line 815
    invoke-virtual {p0, p4, v6}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->enableCache(II)V

    .line 817
    :cond_1
    return-void

    .end local v0           #bShareAndDelete:Z
    .end local v1           #filterAlbumArt:Z
    .end local v2           #sort:I
    .end local v3           #sortAscending:Z
    :cond_2
    move v3, v6

    .line 802
    goto :goto_0

    .restart local v0       #bShareAndDelete:Z
    .restart local v2       #sort:I
    .restart local v3       #sortAscending:Z
    :cond_3
    move v1, v6

    .line 808
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mRefreshFlag:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleBegin:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mImageDecodedListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    return-object v0
.end method

.method private joinDecodeThread(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;)V
    .locals 11
    .parameter "thread"

    .prologue
    const/4 v10, 0x3

    .line 1539
    if-eqz p1, :cond_2

    .line 1540
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1542
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1543
    .local v0, count:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1544
    .local v3, t1:J
    sget-object v7, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Join thread "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " <<<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    :goto_0
    if-ge v0, v10, :cond_0

    .line 1548
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->cancel()V

    .line 1549
    const-wide/16 v7, 0x7d0

    invoke-virtual {p1, v7, v8}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->join(J)V

    .line 1550
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->isAlive()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_3

    .line 1558
    :cond_0
    if-lt v0, v10, :cond_1

    .line 1560
    sget-object v7, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stop decode threadfailed after 3 times retry "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1563
    .local v5, t2:J
    sget-object v7, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Join thread "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >>> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v5, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    .end local v0           #count:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #t1:J
    .end local v5           #t2:J
    :cond_2
    return-void

    .line 1552
    .restart local v0       #count:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #t1:J
    :catch_0
    move-exception v1

    .line 1554
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1556
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelDelete()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->cancelDeleting()V

    .line 1112
    :cond_0
    return-void
.end method

.method public clearPickerList()V
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1179
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1180
    return-void
.end method

.method public enableCache(II)V
    .locals 0
    .parameter "memCacheSize"
    .parameter "fileCacheSize"

    .prologue
    .line 738
    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/album/AdapterBase;->enableCache(II)V

    .line 739
    return-void
.end method

.method public enterUploadEditorMode()V
    .locals 2

    .prologue
    .line 1202
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mUploadEditorMode:Z

    if-eqz v0, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->stopThumbThreads()V

    .line 1206
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1207
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->createNonCursorList(Ljava/util/ArrayList;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1209
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mUploadEditorMode:Z

    goto :goto_0
.end method

.method public getAllDrmContentCount()I
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v0

    .line 1096
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "position"
    .parameter "type"

    .prologue
    .line 866
    const/4 v9, 0x0

    .line 868
    .local v9, bmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v17

    .line 869
    .local v17, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v17, :cond_0

    const/4 v2, 0x0

    .line 920
    :goto_0
    return-object v2

    .line 871
    :cond_0
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 872
    .local v3, dataPath:Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v5

    .line 873
    .local v5, modifiedTime:J
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v10

    long-to-int v7, v10

    .line 874
    .local v7, fileSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    if-eqz v2, :cond_1

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    const/4 v9, 0x1

    move/from16 v4, p1

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    .end local v9           #bmp:Landroid/graphics/Bitmap;
    move-result-object v9

    .line 878
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    if-nez v9, :cond_1

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    const/4 v9, 0x2

    move/from16 v4, p1

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    .end local v9           #bmp:Landroid/graphics/Bitmap;
    move-result-object v9

    .line 883
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    :cond_1
    if-nez v9, :cond_8

    .line 885
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 886
    .local v18, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 887
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 889
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 891
    :cond_3
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v2, v4

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .line 892
    .local v19, pixels:J
    const-wide/32 v10, 0x7a1200

    cmp-long v2, v19, v10

    if-lez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 894
    :cond_4
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mContext:Landroid/app/Activity;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v4}, Lcom/htc/opensense2/album/util/ImageUtils;->filmstripBitmap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 907
    :cond_5
    :goto_1
    if-nez v9, :cond_6

    .line 908
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    .line 910
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    if-eqz v2, :cond_7

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    move/from16 v0, p1

    invoke-interface {v2, v0, v9}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;->preCacheHandler(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 914
    :cond_7
    if-eqz v9, :cond_8

    .line 915
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    const/16 v16, 0x3

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v3

    move-wide v13, v5

    move v15, v7

    invoke-virtual/range {v8 .. v16}, Lcom/htc/opensense2/album/cache/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .end local v18           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v19           #pixels:J
    :cond_8
    move-object v2, v9

    .line 920
    goto/16 :goto_0

    .line 898
    .restart local v18       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v19       #pixels:J
    :cond_9
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 900
    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v4}, Lcom/htc/opensense2/album/util/ImageUtils;->loadSquareBitmap(Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_1

    .line 902
    :cond_a
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 904
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_1
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 947
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    return v0
.end method

.method public getCachedBitmap(ILcom/htc/opensense2/album/util/ImageManager$IImage;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "position"
    .parameter "image"
    .parameter "type"
    .parameter "source"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1223
    const/4 v8, 0x0

    .line 1225
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    move-object v0, v9

    .line 1249
    :goto_0
    return-object v0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    if-eqz v0, :cond_3

    .line 1228
    const/4 v5, 0x0

    .line 1229
    .local v5, imgSize:I
    const-wide/16 v3, 0x0

    .line 1230
    .local v3, modifiedTime:J
    if-eq v10, p4, :cond_1

    .line 1231
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v0

    long-to-int v5, v0

    .line 1232
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1238
    if-nez v8, :cond_3

    .line 1239
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1241
    invoke-virtual {p0, p1, v10}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->requestBitmap(II)V

    move-object v0, v9

    .line 1242
    goto :goto_0

    :cond_2
    move-object v0, v8

    .line 1245
    goto :goto_0

    .end local v3           #modifiedTime:J
    .end local v5           #imgSize:I
    :cond_3
    move-object v0, v8

    .line 1249
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStartDeleting:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mBackupSize:I

    .line 846
    :goto_0
    return v0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    goto :goto_0

    .line 846
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDecodeBegin()I
    .locals 1

    .prologue
    .line 1425
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleBegin:I

    return v0
.end method

.method public getDecodeCenter()I
    .locals 1

    .prologue
    .line 1435
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleBegin:I

    return v0
.end method

.method public getDecodeEnd()I
    .locals 1

    .prologue
    .line 1430
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleEnd:I

    return v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1115
    const-string v0, ""

    .line 1116
    .local v0, szHeader:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mObjRequest:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mObjRequest:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "key_folder_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    :cond_0
    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageCount()I

    move-result v0

    .line 1046
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method public getItem(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "position"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 855
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 862
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaType:I

    return v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCacheSize()I

    move-result v0

    return v0
.end method

.method public getNonDrmImageCount()I
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v0

    .line 1058
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNonDrmVideoCount()I
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmVideoCount()I

    move-result v0

    .line 1064
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPickerCount()I
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPickerIndex()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPickerList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    return-object v0
.end method

.method public getPickerMode()I
    .locals 1

    .prologue
    .line 1188
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerMode:I

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "section"

    .prologue
    .line 1346
    const/4 v0, 0x0

    .line 1347
    .local v0, position:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    if-eqz v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    invoke-interface {v1, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;->onGetPositionForSection(I)I

    move-result v0

    .line 1350
    :cond_0
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1354
    const/4 v0, 0x0

    .line 1355
    .local v0, section:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    if-eqz v1, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    invoke-interface {v1, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;->onGetSectionForPosition(I)I

    move-result v0

    .line 1358
    :cond_0
    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1338
    const/4 v0, 0x0

    .line 1339
    .local v0, setions:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    if-eqz v1, :cond_0

    .line 1340
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    invoke-interface {v1, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;->onGetSections(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)[Ljava/lang/Object;

    move-result-object v0

    .line 1342
    :cond_0
    return-object v0
.end method

.method public getSetAsDrmImageCount()I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCanSetAsImageCount()I

    move-result v0

    .line 1083
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSetAsDrmVideoCount()I
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCanSetAsVideoCount()I

    move-result v0

    .line 1089
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSharableDrmImageCount()I
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v0

    .line 1071
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSharableDrmVideoCount()I
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v0

    .line 1077
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v0

    .line 1052
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVisibleBegin()I
    .locals 1

    .prologue
    .line 1012
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleBegin:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleEnd:I

    return v0
.end method

.method public holdThumbThreads(Z)V
    .locals 1
    .parameter "bHold"

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHoldThread:Z

    if-ne v0, p1, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHoldThread:Z

    .line 1324
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    if-eqz v0, :cond_2

    .line 1325
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHoldThread:Z

    if-eqz v0, :cond_3

    .line 1326
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->pauseDecode()V

    .line 1330
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    if-eqz v0, :cond_0

    .line 1331
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHoldThread:Z

    if-eqz v0, :cond_4

    .line 1332
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->pauseDecode()V

    goto :goto_0

    .line 1328
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->resumeDecode()V

    goto :goto_1

    .line 1334
    :cond_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->resumeDecode()V

    goto :goto_0
.end method

.method public isDrm(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    return v0
.end method

.method public isItemPicked(I)Z
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeep3DBarrierOn()Z
    .locals 2

    .prologue
    .line 1613
    const-string v0, "com.htc.HTCAlbum.ALL_3DS"

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1615
    :cond_0
    const/4 v0, 0x1

    .line 1619
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPickerContains(I)Z
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 1167
    const/4 v0, 0x0

    .line 1169
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    if-nez v2, :cond_0

    move v1, v0

    .line 1174
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1172
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    .line 1174
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isViewSingleImage()Z
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mViewSingleImage:Z

    return v0
.end method

.method public leaveUploadEditorMode()V
    .locals 5

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mUploadEditorMode:Z

    if-nez v0, :cond_0

    .line 1219
    :goto_0
    return-void

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mContext:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaType:I

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFolderType:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mUploadEditorMode:Z

    goto :goto_0
.end method

.method public loadBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 1020
    const/4 v0, 0x0

    return-object v0
.end method

.method public needRefresh()Z
    .locals 1

    .prologue
    .line 1451
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mRefreshFlag:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1517
    invoke-super {p0}, Lcom/htc/opensense2/album/AdapterBase;->notifyDataSetChanged()V

    .line 1519
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->setThumbWorkerEnable(Z)V

    .line 1521
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaDataChangeListener:Lcom/htc/sunny2/IMediaList$ChangeListener;

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaDataChangeListener:Lcom/htc/sunny2/IMediaList$ChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/IMediaList$ChangeListener;->onMediaListChange(Lcom/htc/sunny2/IMediaList;I)V

    .line 1524
    :cond_0
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 1527
    invoke-super {p0}, Lcom/htc/opensense2/album/AdapterBase;->notifyDataSetInvalidated()V

    .line 1528
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaDataChangeListener:Lcom/htc/sunny2/IMediaList$ChangeListener;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaDataChangeListener:Lcom/htc/sunny2/IMediaList$ChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList$ChangeListener;->onMediaListRefresh(I)V

    .line 1531
    :cond_0
    return-void
.end method

.method public pickItem(ILandroid/view/View;)V
    .locals 7
    .parameter "nIndex"
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1125
    move-object v1, p2

    check-cast v1, Lcom/htc/opensense2/widget/GalleryImageView;

    .line 1126
    .local v1, target:Lcom/htc/opensense2/widget/GalleryImageView;
    iget v4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerMode:I

    const/16 v5, 0x100

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerMode:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    :cond_0
    move v0, v3

    .line 1130
    .local v0, isDeleteMode:Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->isItemPicked(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1132
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1133
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 1135
    invoke-virtual {v1, v2}, Lcom/htc/opensense2/widget/GalleryImageView;->setMakeDelete(Z)V

    .line 1145
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1146
    invoke-virtual {v1}, Lcom/htc/opensense2/widget/GalleryImageView;->getChecked()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    invoke-virtual {v1, v3}, Lcom/htc/opensense2/widget/GalleryImageView;->setChecked(Z)V

    .line 1148
    :cond_2
    return-void

    .end local v0           #isDeleteMode:Z
    :cond_3
    move v0, v2

    .line 1126
    goto :goto_0

    .line 1139
    .restart local v0       #isDeleteMode:Z
    :cond_4
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 1142
    invoke-virtual {v1, v3}, Lcom/htc/opensense2/widget/GalleryImageView;->setMakeDelete(Z)V

    goto :goto_1

    :cond_5
    move v3, v2

    .line 1146
    goto :goto_2
.end method

.method public queryPosByUri(Landroid/net/Uri;)I
    .locals 9
    .parameter "uri"

    .prologue
    .line 1366
    sget-object v6, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    if-nez p1, :cond_1

    const/4 v5, -0x1

    .line 1392
    :cond_0
    :goto_0
    return v5

    .line 1370
    :cond_1
    const/4 v5, -0x1

    .line 1372
    .local v5, position:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    .line 1373
    .local v4, listCount:I
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1374
    .local v0, absFileType:Z
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1376
    .local v1, comparePath:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_0

    .line 1377
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 1378
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1379
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1380
    move v5, v2

    .line 1382
    goto :goto_0

    .line 1374
    .end local v1           #comparePath:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1385
    .restart local v1       #comparePath:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1386
    move v5, v2

    .line 1388
    goto :goto_0

    .line 1376
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public refresh(Z)Z
    .locals 2
    .parameter "bForce"

    .prologue
    const/4 v1, 0x0

    .line 1456
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mRefreshFlag:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    .line 1458
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 1459
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 1460
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->notifyDataSetChanged()V

    .line 1461
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mRefreshFlag:Z

    .line 1463
    const/4 v0, 0x1

    .line 1466
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public refreshVisibleRange()V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v0, :cond_1

    .line 966
    sget-object v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "refreshVisibleRange NG!"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->refresh()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/CacheManager;->release()V

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->stopThumbThreads()V

    .line 929
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mNotifyDataChangeListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 931
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mGrayFilmstripVideo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mGrayFilmstripVideo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mGrayGrid:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mGrayGrid:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 939
    :cond_3
    return-void
.end method

.method public removeCache(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    .line 1255
    .local v7, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    if-nez v0, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1258
    .local v1, dataPath:Ljava/lang/String;
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    .line 1259
    .local v3, modifiedTime:J
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v5

    .local v5, fileSize:J
    move-object v0, p0

    move v2, p1

    .line 1261
    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->removeCache(Ljava/lang/String;IJJ)V

    goto :goto_0
.end method

.method public removeCache(Ljava/lang/String;IJJ)V
    .locals 7
    .parameter "dataPath"
    .parameter "position"
    .parameter "modifiedTime"
    .parameter "fileSize"

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    long-to-int v5, p5

    .line 1269
    .local v5, fsize:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    const/4 v6, 0x2

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/cache/CacheManager;->removeCache(Ljava/lang/String;IJII)V

    .line 1270
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    const/4 v6, 0x3

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/cache/CacheManager;->removeCache(Ljava/lang/String;IJII)V

    .line 1271
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    const/4 v6, 0x4

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/cache/CacheManager;->removeCache(Ljava/lang/String;IJII)V

    .line 1272
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/cache/CacheManager;->removeCache(Ljava/lang/String;IJII)V

    goto :goto_0
.end method

.method public requestBitmap(II)V
    .locals 1
    .parameter "position"
    .parameter "thumbnailSize"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->start()V

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    if-eqz v0, :cond_2

    .line 959
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->add(I)V

    .line 960
    :cond_2
    return-void
.end method

.method public resetDeleting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1486
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStartDeleting:Z

    .line 1487
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mBackupSize:I

    .line 1489
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->setDeleteMode(Z)V

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    if-eqz v0, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->setDeleteMode(Z)V

    .line 1494
    :cond_1
    return-void
.end method

.method public setCacheMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 943
    iput p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    .line 944
    return-void
.end method

.method public setDeleteAll()V
    .locals 3

    .prologue
    .line 1409
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStopDeleteAll:Z

    if-nez v1, :cond_1

    .line 1411
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1412
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1415
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStopDeleteAll:Z

    .line 1416
    return-void
.end method

.method public setGetSectionIndexerListener(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mOnGetSectionIndexer:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$OnGetSectionIndexerListener;

    .line 1363
    return-void
.end method

.method public setImageDecodedListener(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mImageDecodedListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;

    .line 1033
    return-void
.end method

.method public setMediaDataChangeListener(Lcom/htc/sunny2/IMediaList$ChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mMediaDataChangeListener:Lcom/htc/sunny2/IMediaList$ChangeListener;

    .line 1535
    return-void
.end method

.method public setPickerMode(I)V
    .locals 1
    .parameter "nPickerMode"

    .prologue
    .line 1194
    iput p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerMode:I

    .line 1195
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1196
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPickerIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStopDeleteAll:Z

    .line 1198
    return-void
.end method

.method public setPreCacheHandler(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    .line 1029
    return-void
.end method

.method public setRefreshFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1446
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mRefreshFlag:Z

    .line 1447
    return-void
.end method

.method public setThumbWorkerEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->clear()V

    .line 1107
    :cond_0
    return-void
.end method

.method public setVisibleRange(III)Z
    .locals 3
    .parameter "itemBegin"
    .parameter "itemCenter"
    .parameter "itemEnd"

    .prologue
    .line 979
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v1, :cond_0

    .line 981
    sget-object v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setVisibleRange NG!"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x0

    .line 1008
    :goto_0
    return v0

    .line 985
    :cond_0
    if-gez p1, :cond_1

    .line 986
    const/4 p1, 0x0

    .line 988
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_2

    .line 989
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 991
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt p2, v1, :cond_3

    .line 992
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 p2, v1, -0x1

    .line 994
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    if-eqz v1, :cond_4

    .line 995
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    invoke-virtual {v1, p1, p3}, Lcom/htc/opensense2/album/cache/CacheManager;->setVisibleRange(II)V

    .line 997
    :cond_4
    const/4 v0, 0x0

    .line 999
    .local v0, bResult:Z
    iget v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 1001
    :cond_5
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    if-eqz v1, :cond_6

    .line 1002
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-virtual {v1, p2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->setCenter(I)Z

    move-result v0

    .line 1005
    :cond_6
    iput p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleBegin:I

    .line 1006
    iput p3, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleEnd:I

    .line 1007
    iput p2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleCenter:I

    goto :goto_0
.end method

.method public startDeleting()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1474
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStartDeleting:Z

    .line 1475
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mBackupSize:I

    .line 1477
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->setDeleteMode(Z)V

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    if-eqz v0, :cond_1

    .line 1481
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->setDeleteMode(Z)V

    .line 1482
    :cond_1
    return-void
.end method

.method public startThumbThreads()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1277
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->joinDecodeThread(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;)V

    .line 1278
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    .line 1280
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->joinDecodeThread(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;)V

    .line 1281
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    .line 1283
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v0, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1287
    :cond_1
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    .line 1288
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->start()V

    .line 1291
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    if-nez v0, :cond_3

    .line 1293
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    .line 1296
    :cond_3
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 1297
    :cond_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleCenter:I

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->setCenter(I)Z

    .line 1299
    :cond_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->start()V

    goto :goto_0
.end method

.method public stopDeleteAll()V
    .locals 1

    .prologue
    .line 1420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mStopDeleteAll:Z

    .line 1421
    return-void
.end method

.method public stopThumbThreads()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1304
    sget-object v4, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "try to stop photo decode thread."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1307
    .local v0, t1:J
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->joinDecodeThread(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;)V

    .line 1308
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->joinDecodeThread(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;)V

    .line 1310
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mThumbLoader:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;

    .line 1311
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mFullviewWorker:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;

    .line 1312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1313
    .local v2, t2:J
    sget-object v4, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopped photo decode thread. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    return-void
.end method

.method public updateContentData(Landroid/content/Intent;)I
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 1397
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 1398
    if-nez p1, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return v2

    .line 1400
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1402
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1404
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->queryPosByUri(Landroid/net/Uri;)I

    move-result v2

    goto :goto_0
.end method
