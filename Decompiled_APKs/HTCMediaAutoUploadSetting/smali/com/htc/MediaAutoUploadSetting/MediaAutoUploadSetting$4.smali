.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;


# direct methods
.method constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUploadHeadView:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1500(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Landroid/widget/RelativeLayout;

    move-result-object v8

    if-ne p2, v8, :cond_2

    .line 495
    iget-object v9, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z
    invoke-static {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z
    invoke-static {v9, v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1602(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Z)Z

    .line 496
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mCheckBoxAutoUpload:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-static {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mEnableAutoUpload:Z
    invoke-static {v9}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 652
    :cond_0
    :goto_1
    return-void

    .line 495
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 498
    :cond_2
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyHeadView:Lcom/htc/widget/HtcListItem;
    invoke-static {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1800(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem;

    move-result-object v8

    if-ne p2, v8, :cond_3

    .line 500
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f070003

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x7f08

    iget-object v10, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I
    invoke-static {v10}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v10

    new-instance v11, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

    invoke-direct {v11, p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;)V

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_1

    .line 556
    :cond_3
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceHeadView:Lcom/htc/widget/HtcListItem;
    invoke-static {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2300(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem;

    move-result-object v8

    if-ne p2, v8, :cond_5

    .line 558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-virtual {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 560
    .local v6, pkgMgr:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.htc.providers.uploads.action.AUTO_UPLOAD_REQUEST"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v5, intent:Landroid/content/Intent;
    const/4 v8, 0x2

    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 571
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 573
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-virtual {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 575
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f070004

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I
    invoke-static {v10}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v10

    new-instance v11, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;

    invoke-direct {v11, p0, v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;Ljava/util/List;)V

    invoke-virtual {v9, v8, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_1

    .line 614
    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #pkgMgr:Landroid/content/pm/PackageManager;
    :cond_5
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumHeadView:Lcom/htc/widget/HtcListItem;
    invoke-static {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem;

    move-result-object v8

    if-ne p2, v8, :cond_0

    .line 616
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 623
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 628
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v7, strArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Album;

    .line 631
    .local v0, a:Lcom/htc/opensense/social/data/Album;
    iget-object v8, v0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 634
    .end local v0           #a:Lcom/htc/opensense/social/data/Album;
    :cond_6
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f070005

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v10}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v10

    new-instance v11, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;

    invoke-direct {v11, p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;)V

    invoke-virtual {v9, v8, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_1
.end method
