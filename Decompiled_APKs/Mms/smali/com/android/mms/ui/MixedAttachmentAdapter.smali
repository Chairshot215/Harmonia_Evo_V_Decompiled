.class public Lcom/android/mms/ui/MixedAttachmentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MixedAttachmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/MediaModel;",
        ">;"
    }
.end annotation


# instance fields
.field mCache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 41
    iput-object p1, p0, Lcom/android/mms/ui/MixedAttachmentAdapter;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private bindView(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "position"

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    iput-object v1, p0, Lcom/android/mms/ui/MixedAttachmentAdapter;->mCache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 62
    invoke-virtual {p0, p3}, Lcom/android/mms/ui/MixedAttachmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 63
    .local v0, media:Lcom/android/mms/model/MediaModel;
    iget-object v1, p0, Lcom/android/mms/ui/MixedAttachmentAdapter;->mCache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    iget-object v1, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/mms/ui/MixedAttachmentAdapter;->mCache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    iget-object v1, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->TitleImage:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/mms/ui/MixedAttachmentAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v4, v4, v3}, Lcom/android/mms/ui/HtcListItemComposer;->createSimpleListItem(Landroid/content/Context;ZZZ)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 49
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 50
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    .end local v0           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MixedAttachmentAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1, p1}, Lcom/android/mms/ui/MixedAttachmentAdapter;->bindView(Landroid/content/Context;Landroid/view/View;I)V

    .line 56
    return-object v1

    .line 52
    .end local v1           #view:Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0
.end method
