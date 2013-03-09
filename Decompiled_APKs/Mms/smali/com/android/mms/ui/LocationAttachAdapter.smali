.class Lcom/android/mms/ui/LocationAttachAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# static fields
.field public static final FOOTPRINT:I = 0x6

.field public static final FROM_PEOPLE:I = 0x7

.field public static final MEDIA_GEOTAG:I = 0x5

.field public static final MY_LOCATION:I = 0x0

.field public static final SEARCH_ADDRESS:I = 0x1

.field public static final SEARCH_BING:I = 0x3

.field public static final VIEW_FAVORITES:I = 0x2

.field public static final VIEW_RECENTS:I = 0x4


# instance fields
.field private mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 657
    invoke-static {p1}, Lcom/android/mms/ui/LocationAttachAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 658
    iput-object p1, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    .line 659
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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
    .line 704
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 706
    .local v0, listData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v1, 0x7f09038a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02014e

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LocationAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 709
    const v1, 0x7f090386

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020154

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LocationAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 712
    const v1, 0x7f090388

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020156

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LocationAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 715
    const v1, 0x7f090389

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020155

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LocationAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 718
    const v1, 0x7f090387

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020006

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LocationAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 721
    const v1, 0x7f09038b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020151

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LocationAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 724
    const v1, 0x7f09038c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020157

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LocationAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 727
    const v1, 0x7f09038d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02014a

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LocationAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 730
    return-object v0
.end method


# virtual methods
.method public onItemAction(I)V
    .locals 6
    .parameter "nIDItem"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x33

    .line 663
    packed-switch p1, :pswitch_data_0

    .line 701
    :goto_0
    return-void

    .line 665
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/location/LocationMapActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    .local v0, mapIntent:Landroid/content/Intent;
    const-string v2, "extra_startup_flag"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 670
    .end local v0           #mapIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/location/LocationMapActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    .restart local v0       #mapIntent:Landroid/content/Intent;
    const-string v2, "extra_startup_flag"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 675
    .end local v0           #mapIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/location/PlacesTabActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    .restart local v0       #mapIntent:Landroid/content/Intent;
    const-string v2, "extra_initial_tab"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 680
    .end local v0           #mapIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/location/LocationMapActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 681
    .restart local v0       #mapIntent:Landroid/content/Intent;
    const-string v2, "extra_startup_flag"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 685
    .end local v0           #mapIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/location/PlacesTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .local v1, tabIntent:Landroid/content/Intent;
    const-string v2, "extra_initial_tab"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 687
    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 690
    .end local v1           #tabIntent:Landroid/content/Intent;
    :pswitch_5
    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    const/16 v3, 0x46

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto :goto_0

    .line 693
    :pswitch_6
    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    const/16 v3, 0x47

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->selectFootprint(Landroid/content/Context;I)V

    goto :goto_0

    .line 696
    :pswitch_7
    iget-object v2, p0, Lcom/android/mms/ui/LocationAttachAdapter;->mContext:Landroid/app/Activity;

    const/16 v3, 0x48

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->selectPostalFromPeople(Landroid/content/Context;I)V

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
