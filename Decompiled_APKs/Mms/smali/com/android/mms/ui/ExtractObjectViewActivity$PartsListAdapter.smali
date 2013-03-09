.class Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ExtractObjectViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ExtractObjectViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/MediaModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mSlidenum:[I

.field final synthetic this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ExtractObjectViewActivity;Landroid/content/Context;Ljava/util/ArrayList;[I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .parameter "slidenum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    .line 755
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 756
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 757
    #setter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$502(Lcom/android/mms/ui/ExtractObjectViewActivity;Landroid/content/Context;)Landroid/content/Context;

    .line 758
    iput-object p4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->mSlidenum:[I

    .line 760
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 764
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/model/MediaModel;

    .line 765
    .local v11, info:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->mSlidenum:[I

    move-object/from16 v19, v0

    aget v12, v19, p1

    .line 767
    .local v12, num:I
    const/4 v4, 0x0

    .line 768
    .local v4, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const/4 v14, 0x0

    .line 769
    .local v14, photo:Lcom/htc/widget/HtcListItemTileImage;
    const/16 v17, 0x0

    .line 770
    .local v17, text:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v5, 0x0

    .line 772
    .local v5, check:Lcom/htc/widget/HtcListItemCheckBox;
    if-nez p2, :cond_5

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Lcom/android/mms/ui/HtcListItemComposer;->createSimpleListItem(Landroid/content/Context;ZZZ)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v9

    .line 775
    .local v9, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v0, v9, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    move-object/from16 p2, v0

    .line 776
    iget-object v14, v9, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->TitleImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 777
    iget-object v0, v9, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v17, v0

    .line 778
    iget-object v5, v9, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 779
    move-object v4, v9

    .line 780
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 790
    .end local v9           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :goto_0
    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 795
    .local v6, contentType:Ljava/lang/String;
    :try_start_0
    const-string v19, "application/vnd.oma.drm.message"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 796
    new-instance v7, Lcom/android/mms/drm/DrmWrapper;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$600(Lcom/android/mms/ui/ExtractObjectViewActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/mms/pdu/PduPart;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v7, v6, v0, v1}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 797
    .local v7, drmObject:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 804
    .end local v7           #drmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_0
    :goto_1
    instance-of v0, v11, Lcom/android/mms/model/UnsupportedMediaModel;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 806
    const v19, 0x7f02019c

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 869
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$600(Lcom/android/mms/ui/ExtractObjectViewActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$600(Lcom/android/mms/ui/ExtractObjectViewActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/mms/pdu/PduPart;

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->getPartFileName(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 874
    :cond_1
    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v15, v0, 0x400

    .line 875
    .local v15, size:I
    if-nez v15, :cond_2

    .line 876
    const/4 v15, 0x1

    .line 878
    :cond_2
    const-string v19, "text/x-vCard"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "text/x-vCalendar"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 880
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f090029

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 895
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$700(Lcom/android/mms/ui/ExtractObjectViewActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mSelectAll:Z
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$200(Lcom/android/mms/ui/ExtractObjectViewActivity;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 896
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 902
    :goto_4
    return-object p2

    .line 783
    .end local v6           #contentType:Ljava/lang/String;
    .end local v15           #size:I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    check-cast v4, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 784
    .restart local v4       #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v0, v4, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v17, v0

    .line 785
    iget-object v14, v4, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->TitleImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 786
    iget-object v5, v4, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    goto/16 :goto_0

    .line 799
    .restart local v6       #contentType:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 800
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 808
    .end local v8           #e:Ljava/lang/Exception;
    :cond_6
    const-string v19, "image"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object v10, v11

    .line 809
    check-cast v10, Lcom/android/mms/model/ImageModel;

    .line 810
    .local v10, image:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v10}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 813
    :try_start_1
    invoke-virtual {v10}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/drm/mobile1/DrmException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 814
    :catch_1
    move-exception v8

    .line 816
    .local v8, e:Landroid/drm/mobile1/DrmException;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmException;->printStackTrace()V

    goto/16 :goto_2

    .line 821
    .end local v8           #e:Landroid/drm/mobile1/DrmException;
    :cond_7
    invoke-virtual {v10}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 824
    .end local v10           #image:Lcom/android/mms/model/ImageModel;
    :cond_8
    const-string v19, "audio"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object v2, v11

    .line 825
    check-cast v2, Lcom/android/mms/model/AudioModel;

    .line 826
    .local v2, audio:Lcom/android/mms/model/AudioModel;
    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->isDrmProtected()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020199

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 828
    .local v3, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 831
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    const v19, 0x7f0201a7

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto/16 :goto_2

    .line 834
    .end local v2           #audio:Lcom/android/mms/model/AudioModel;
    :cond_a
    const-string v19, "video"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v18, v11

    .line 835
    check-cast v18, Lcom/android/mms/model/VideoModel;

    .line 836
    .local v18, video:Lcom/android/mms/model/VideoModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 838
    const/4 v3, 0x0

    .line 839
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VideoModel;->getPartName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 840
    if-nez v3, :cond_b

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020199

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 844
    :cond_b
    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 848
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :cond_c
    const/4 v3, 0x0

    .line 849
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VideoModel;->getPartName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 850
    if-nez v3, :cond_d

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020177

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 854
    :cond_d
    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 858
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v18           #video:Lcom/android/mms/model/VideoModel;
    :cond_e
    const-string v19, "text/x-vCard"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 859
    const v19, 0x7f0200f5

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto/16 :goto_2

    .line 861
    :cond_f
    const-string v19, "text/x-vCalendar"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 862
    const v19, 0x7f0200f4

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto/16 :goto_2

    .line 865
    :cond_10
    const v19, 0x7f02019c

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto/16 :goto_2

    .line 884
    .restart local v15       #size:I
    :cond_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f090117

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 886
    .local v13, numStr:Ljava/lang/String;
    if-gez v12, :cond_12

    .line 887
    const-string v13, ""

    .line 890
    :cond_12
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f090029

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 891
    .local v16, sizeStr:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 899
    .end local v13           #numStr:Ljava/lang/String;
    .end local v16           #sizeStr:Ljava/lang/String;
    :cond_13
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto/16 :goto_4
.end method
