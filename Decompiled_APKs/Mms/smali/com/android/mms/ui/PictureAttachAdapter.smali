.class Lcom/android/mms/ui/PictureAttachAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# static fields
.field public static final ADD_CAMERA:I = 0x0

.field public static final ADD_PHOTOS:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResizeImage:Z

.field protected m_mediaPicker:Lcom/android/mms/ui/MediaPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MediaPicker;Z)V
    .locals 1
    .parameter "context"
    .parameter "mediaPicker"
    .parameter "bResizeImage"

    .prologue
    .line 300
    invoke-static {p1}, Lcom/android/mms/ui/PictureAttachAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 301
    iput-object p2, p0, Lcom/android/mms/ui/PictureAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 302
    iput-object p1, p0, Lcom/android/mms/ui/PictureAttachAdapter;->mContext:Landroid/content/Context;

    .line 303
    iput-boolean p3, p0, Lcom/android/mms/ui/PictureAttachAdapter;->mResizeImage:Z

    .line 304
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0900dc

    const v5, 0x7f020151

    const v4, 0x7f02014d

    const v3, 0x20c01d3

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v0, listData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_0

    .line 337
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/PictureAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 338
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/mms/ui/PictureAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 345
    :goto_0
    return-object v0

    .line 340
    :cond_0
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/PictureAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 341
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/mms/ui/PictureAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onItemAction(I)V
    .locals 2
    .parameter "nIDItem"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/PictureAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 311
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/PictureAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/PictureAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget-boolean v1, p0, Lcom/android/mms/ui/PictureAttachAdapter;->mResizeImage:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setResizeImage(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/PictureAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/PictureAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/PictureAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget-boolean v1, p0, Lcom/android/mms/ui/PictureAttachAdapter;->mResizeImage:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setResizeImage(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/mms/ui/PictureAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
