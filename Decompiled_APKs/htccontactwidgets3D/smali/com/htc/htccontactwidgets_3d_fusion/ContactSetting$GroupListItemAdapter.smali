.class public Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupListItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;


# direct methods
.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "c"

    .prologue
    .line 922
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    .line 923
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 924
    invoke-virtual {p1, p4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->CacheCursorIndex(Landroid/database/Cursor;)V

    .line 925
    return-void
.end method

.method private updateImageViewWithCache(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;Landroid/database/Cursor;)V
    .locals 6
    .parameter "holder"
    .parameter "c"

    .prologue
    .line 961
    iget-object v2, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->bitmap:Landroid/graphics/Bitmap;

    .line 962
    .local v2, oldBitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->bitmap:Landroid/graphics/Bitmap;

    .line 963
    const/4 v0, 0x0

    .line 965
    .local v0, bytes:[B
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupPhotoIndex:I

    if-ltz v3, :cond_0

    .line 966
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupPhotoIndex:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 967
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 968
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->bitmap:Landroid/graphics/Bitmap;

    .line 972
    :cond_0
    iget-object v3, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 973
    iget-object v3, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->photoView:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 995
    :goto_0
    if-eqz v2, :cond_1

    .line 997
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 998
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1000
    :cond_1
    return-void

    .line 978
    :cond_2
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 980
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupNameIdx:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResource(Ljava/lang/String;)I

    move-result v1

    .line 981
    .local v1, iconResId:I
    iget-object v3, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 987
    .end local v1           #iconResId:I
    :cond_3
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mDefaultGroupImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_4

    .line 988
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupDefaultResID:I
    invoke-static {v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$1000(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mDefaultGroupImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$902(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 989
    :cond_4
    iget-object v3, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->photoView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mDefaultGroupImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1005
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;

    .line 1008
    .local v0, holder:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1009
    invoke-direct {p0, v0, p3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->updateImageViewWithCache(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;Landroid/database/Cursor;)V

    .line 1011
    :cond_0
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    const/4 v6, 0x1

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getName(Landroid/database/Cursor;Z)Ljava/lang/String;
    invoke-static {v5, p3, v6}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$200(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v2

    .line 1012
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getInputText()Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Ljava/lang/String;

    move-result-object v3

    .line 1013
    .local v3, pattern:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1019
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget v5, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupMemberCountIdx:I

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getMemberCount(Landroid/database/Cursor;)J
    invoke-static {v5, p3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$1100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/database/Cursor;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 1020
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getMemberCount(Landroid/database/Cursor;)J
    invoke-static {v6, p3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$1100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/database/Cursor;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, strGroupMemberCount:Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1025
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1029
    move-object v1, v2

    .line 1030
    .local v1, markStr:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$1200()Landroid/text/style/BackgroundColorSpan;

    move-result-object v5

    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$1300()Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-static {v2, v3, v5, v6}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;

    move-result-object v1

    .line 1032
    if-nez v1, :cond_1

    .line 1033
    move-object v1, v2

    .line 1035
    :cond_1
    iget-object v5, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->txtviewGroupName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    .end local v1           #markStr:Ljava/lang/CharSequence;
    .end local v4           #strGroupMemberCount:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1049
    invoke-direct {p0, v0, p3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->updateImageViewWithCache(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;Landroid/database/Cursor;)V

    .line 1056
    :cond_2
    return-void

    .line 1022
    :cond_3
    const-string v4, " (0)"

    .restart local v4       #strGroupMemberCount:Ljava/lang/String;
    goto :goto_0

    .line 1039
    :cond_4
    iget-object v5, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->txtviewGroupName:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1044
    .end local v4           #strGroupMemberCount:Ljava/lang/String;
    :cond_5
    iget-object v5, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->txtviewGroupName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    const v7, 0x104000e

    invoke-virtual {v6, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 930
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 931
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 950
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 951
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupListItemPool:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;->getItem()Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;

    move-result-object v0

    .line 952
    .local v0, holder:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;
    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->txtviewGroupName:Landroid/widget/TextView;

    .line 953
    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->txtviewGroupMemberCount:Landroid/widget/TextView;

    .line 954
    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->photoView:Landroid/widget/ImageView;

    .line 955
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 956
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 937
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getInputText()Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, inputString:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsActivityForeground:Z
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$700(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    if-eqz v1, :cond_0

    .line 940
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 941
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    invoke-virtual {v1, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->doSearch(Ljava/lang/String;)V

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->doSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPhoto(Landroid/widget/ImageView;Landroid/database/Cursor;I)V
    .locals 0
    .parameter "photoView"
    .parameter "c"
    .parameter "placeholderImageResource"

    .prologue
    .line 1059
    return-void
.end method
