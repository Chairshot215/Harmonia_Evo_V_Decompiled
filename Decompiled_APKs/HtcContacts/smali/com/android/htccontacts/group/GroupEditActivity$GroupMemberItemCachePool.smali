.class Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupMemberItemCachePool"
.end annotation


# instance fields
.field public pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1899
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;->pool:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1899
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;-><init>()V

    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 4

    .prologue
    .line 1907
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;

    .line 1908
    .local v1, item:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;
    iget-object v2, v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1909
    iget-object v2, v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mPhotoView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1911
    :cond_1
    iget-object v2, v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1912
    iget-object v2, v1, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1915
    .end local v1           #item:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1916
    return-void
.end method

.method public getItemCache()Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;
    .locals 2

    .prologue
    .line 1902
    new-instance v0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;

    invoke-direct {v0}, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;-><init>()V

    .line 1903
    .local v0, item:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1904
    return-object v0
.end method
