.class Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
.super Lcom/htc/widget/HtcListView;
.source "MakecallSelectPeopleActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;,
        Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    }
.end annotation


# static fields
.field private static final CENTER_CONTACT:I = 0x1

.field private static final LEFT_CONTACT:I = 0x0

.field private static final RIGHT_CONTACT:I = 0x2


# instance fields
.field private bRemoveContact:Z

.field private mAdapter:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

.field private mBundle:Landroid/os/Bundle;

.field private mCount:I

.field private mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field final synthetic this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1428
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    .line 1429
    invoke-direct {p0, p2, v2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1052
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mBundle:Landroid/os/Bundle;

    .line 1054
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mCount:I

    .line 1055
    iput-boolean v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->bRemoveContact:Z

    .line 2108
    new-instance v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$1;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)V

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1430
    invoke-virtual {p0, v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1431
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setFocusable(Z)V

    .line 1432
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setVerticalScrollBarEnabled(Z)V

    .line 1433
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setSelector(I)V

    .line 1434
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setCacheColorHint(I)V

    .line 1436
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1437
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setChoiceMode(I)V

    .line 1438
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1440
    new-instance v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

    const v1, 0x7f0b0061

    invoke-direct {v0, p0, p2, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mAdapter:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

    .line 1441
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mAdapter:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1442
    return-void
.end method

.method static synthetic access$3500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mAdapter:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

    return-object v0
.end method

.method private extractData(Landroid/database/Cursor;Landroid/graphics/Bitmap;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .locals 9
    .parameter "cursor"
    .parameter "bm"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1680
    new-instance v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iget-object v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-direct {v0, v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V

    .line 1684
    .local v0, contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;
    invoke-static {v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    .line 1685
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleIDColumn:I
    invoke-static {v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    .line 1686
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleNameColumn:I
    invoke-static {v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->name:Ljava/lang/String;

    .line 1687
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleDefaultActionColumn:I
    invoke-static {v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1700(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    .line 1688
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    .line 1691
    iput v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->count:I

    .line 1696
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;
    invoke-static {v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 1698
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoColumn:I
    invoke-static {v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1699
    .local v1, jpgPhotoData:[B
    const/4 v2, 0x0

    .line 1700
    .local v2, jpgTempData:[B
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 1701
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoSizeX:I
    invoke-static {v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoSizeY:I
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v6

    invoke-static {v1, v5, v6, v2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap([BII[B)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1704
    :cond_0
    if-nez p2, :cond_1

    .line 1705
    iput-boolean v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasContactPhotoId:Z

    .line 1710
    :goto_0
    iput-object p2, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 1711
    iput-boolean v3, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasContactPhotoId:Z

    .line 1713
    iget-object v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mHasPhoneNumber:I
    invoke-static {v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_2

    :goto_1
    iput-boolean v3, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasPhoneNumber:Z

    .line 1729
    .end local v1           #jpgPhotoData:[B
    .end local v2           #jpgTempData:[B
    :goto_2
    return-object v0

    .line 1707
    .restart local v1       #jpgPhotoData:[B
    .restart local v2       #jpgTempData:[B
    :cond_1
    iput-boolean v3, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasContactPhotoId:Z

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1713
    goto :goto_1

    .line 1717
    .end local v1           #jpgPhotoData:[B
    .end local v2           #jpgTempData:[B
    :cond_3
    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneDisplayNameColumn:I
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->displayname:Ljava/lang/String;

    .line 1718
    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneNumberTypeColumn:I
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    .line 1719
    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneTypeColumn:I
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2200(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->call_type:J

    .line 1720
    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoColumn:I
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->PhotoId:Ljava/lang/String;

    .line 1721
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->accountType:Ljava/lang/String;

    .line 1722
    const-string v4, "com.anddroid.contacts.sim"

    iget-object v5, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setCallLogPhoto(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Z)V

    .line 1723
    iget-object v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 1724
    iput-object p2, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 1725
    :cond_4
    iput-boolean v3, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasContactPhotoId:Z

    goto :goto_2
.end method

.method private markTouchedAt(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2152
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2153
    .local v7, rect:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2154
    .local v8, rect_:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getChildCount()I

    move-result v9

    .line 2158
    .local v9, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v9, :cond_6

    .line 2159
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2160
    .local v2, item:Landroid/view/View;
    if-nez v2, :cond_1

    .line 2158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2163
    :cond_1
    invoke-virtual {v2, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2164
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    move-object v11, v2

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_0

    move-object v11, v2

    .line 2166
    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0b0037

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/htcdialer/carhome/SubButton;

    .local v5, lPhotoBtn:Lcom/android/htcdialer/carhome/SubButton;
    move-object v11, v2

    .line 2167
    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0b0036

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/carhome/SubButton;

    .line 2169
    .local v4, lContactImage:Lcom/android/htcdialer/carhome/SubButton;
    if-eqz v5, :cond_2

    .line 2172
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/android/htcdialer/carhome/SubButton;->setTouched(Z)V

    .line 2174
    :cond_2
    if-eqz v4, :cond_3

    .line 2175
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/htcdialer/carhome/SubButton;->setTouched(Z)V

    :cond_3
    move-object v11, v2

    .line 2177
    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2178
    iget v11, v8, Landroid/graphics/Rect;->left:I

    iput v11, v7, Landroid/graphics/Rect;->left:I

    .line 2179
    iget v11, v8, Landroid/graphics/Rect;->right:I

    iput v11, v7, Landroid/graphics/Rect;->right:I

    .line 2181
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getScrollY()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 2182
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2183
    if-eqz v4, :cond_4

    .line 2184
    invoke-virtual {v4, v7}, Lcom/android/htcdialer/carhome/SubButton;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2185
    invoke-virtual {p0, v4, v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2186
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    invoke-virtual {v4, v11}, Lcom/android/htcdialer/carhome/SubButton;->setTouched(Z)V

    .line 2188
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v2

    .line 2190
    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    iget v10, v11, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->index_:I

    .local v10, which_item:I
    move-object v11, v2

    .line 2191
    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    iget v6, v11, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->pos_:I

    .line 2192
    .local v6, position:I
    iget-object v11, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mAdapter:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

    invoke-virtual {v11, v6, v10}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->getContact(II)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    move-result-object v0

    .line 2193
    .local v0, c:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    if-eqz v0, :cond_5

    iget-boolean v11, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    if-eqz v11, :cond_5

    .line 2195
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/android/htcdialer/carhome/SubButton;->setVisibility(I)V

    .line 2196
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/android/htcdialer/carhome/SubButton;->setTouched(Z)V

    .line 2164
    .end local v0           #c:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .end local v6           #position:I
    .end local v10           #which_item:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2202
    .end local v2           #item:Landroid/view/View;
    .end local v3           #j:I
    .end local v4           #lContactImage:Lcom/android/htcdialer/carhome/SubButton;
    .end local v5           #lPhotoBtn:Lcom/android/htcdialer/carhome/SubButton;
    :cond_6
    return-void
.end method

.method private removeContact(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1600
    .local p1, lMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;>;"
    const/4 v0, 0x0

    .line 1603
    .local v0, bFind:Z
    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1619
    :cond_0
    return-void

    .line 1606
    :cond_1
    if-eqz p1, :cond_0

    .line 1609
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1611
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1612
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1613
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iget-wide v5, v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iget-wide v7, v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_3

    .line 1614
    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1611
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1612
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private sendQueryMessageDelayed()V
    .locals 0

    .prologue
    .line 2217
    return-void
.end method

.method private setCallLogPhoto(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Z)V
    .locals 16
    .parameter "item"
    .parameter "isSIM"

    .prologue
    .line 1631
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 1632
    .local v14, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_0

    .line 1633
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 1635
    :cond_0
    const/4 v15, 0x0

    .line 1637
    .local v15, photoType:I
    const/4 v7, 0x0

    .line 1638
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_4

    .line 1639
    const/4 v15, 0x1

    .line 1667
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 1668
    move-object/from16 v0, p1

    iput-object v7, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 1670
    :cond_2
    if-eqz v14, :cond_3

    .line 1671
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1672
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 1675
    :cond_3
    return-void

    .line 1645
    :cond_4
    const-wide/16 v3, 0x0

    :try_start_0
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->PhotoId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1647
    .local v12, nStatTime:J
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1648
    .local v8, contactUri:Landroid/net/Uri;
    const-string v1, "photo"

    invoke-static {v8, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1649
    .local v2, photoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-virtual {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data15"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1650
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1651
    const-string v1, "data15"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1652
    .local v10, jpgPhotoData:[B
    const/4 v11, 0x0

    .line 1653
    .local v11, jpgTempData:[B
    if-eqz v10, :cond_5

    array-length v1, v10

    if-lez v1, :cond_5

    .line 1654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoSizeX:I
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoSizeY:I
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v3

    invoke-static {v10, v1, v3, v11}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap([BII[B)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1658
    .end local v10           #jpgPhotoData:[B
    .end local v11           #jpgTempData:[B
    :cond_5
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1659
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1661
    .end local v2           #photoUri:Landroid/net/Uri;
    .end local v8           #contactUri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #nStatTime:J
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 1663
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public GetContactInfoFromCallLogQuery(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Ljava/lang/Long;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .locals 6
    .parameter "item"
    .parameter "nCallLogID"

    .prologue
    .line 2040
    sget-object v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 2057
    :cond_0
    :goto_0
    return-object p1

    .line 2043
    :cond_1
    sget-object v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2044
    .local v1, nSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 2046
    sget-object v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    iget-wide v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->Calls_id:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 2048
    sget-object v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    iget-wide v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->Raw_id:J

    iput-wide v2, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    .line 2049
    sget-object v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    iget-wide v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->Number_Type:J

    iput-wide v2, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    .line 2050
    sget-object v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->displayname:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->displayname:Ljava/lang/String;

    .line 2051
    sget-object v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->PhotoId:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->PhotoId:Ljava/lang/String;

    .line 2052
    sget-object v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->accountType:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->accountType:Ljava/lang/String;

    goto :goto_0

    .line 2044
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public UpdateViewStatus(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Landroid/view/View;Z)V
    .locals 11
    .parameter "Contact"
    .parameter "view"
    .parameter "isTouchable"

    .prologue
    const/4 v5, 0x4

    const v9, -0xbbbbbc

    const/4 v6, 0x0

    .line 1094
    const v7, 0x7f0b0036

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1095
    .local v2, pic1:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-static {v7, v2, v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 1096
    const v7, 0x7f0b0037

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/carhome/SubButton;

    .line 1097
    .local v0, PhotoBtn:Lcom/android/htcdialer/carhome/SubButton;
    const v7, 0x7f0b0039

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1098
    .local v3, pic2:Landroid/widget/ImageView;
    const v7, 0x7f0b0038

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1099
    .local v4, txt1:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {v0, v6}, Lcom/android/htcdialer/carhome/SubButton;->setTouched(Z)V

    .line 1104
    :cond_0
    if-nez p3, :cond_4

    .line 1106
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v9, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1107
    .local v1, gray:Landroid/graphics/PorterDuffColorFilter;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1108
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1109
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1110
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1127
    :cond_3
    :goto_0
    return-void

    .line 1114
    .end local v1           #gray:Landroid/graphics/PorterDuffColorFilter;
    :cond_4
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v9, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1115
    .restart local v1       #gray:Landroid/graphics/PorterDuffColorFilter;
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 1116
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1118
    :cond_5
    if-eqz v3, :cond_6

    .line 1120
    iget-object v7, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    iget-object v8, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    invoke-virtual {v7, v8, p1, v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CheckDefaultAction(Ljava/lang/String;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1121
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1125
    :cond_6
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1123
    :cond_7
    iget-wide v7, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_8

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_8
    move v5, v6

    goto :goto_2
.end method

.method public extractFavorites(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cursor"

    .prologue
    const/16 v11, 0x1a0e

    const/4 v10, 0x0

    .line 1734
    const/4 v5, 0x0

    .line 1736
    .local v5, position:I
    if-nez p1, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1742
    .local v3, cursor_size:I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1743
    .local v1, bmfo:Landroid/graphics/BitmapFactory$Options;
    const v4, 0x7f020033

    .line 1745
    .local v4, defaultPhotoResource:I
    const/4 v0, 0x0

    .line 1746
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1749
    :try_start_0
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v5

    .line 1752
    if-nez v5, :cond_3

    .line 1753
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1763
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1766
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I
    invoke-static {v6, v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2302(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 1767
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v7, 0x1

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedRefreshCursor:Z
    invoke-static {v6, v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2402(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1798
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1799
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I
    invoke-static {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v8

    invoke-virtual {v7, v11, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1801
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1802
    const/4 p1, 0x0

    goto :goto_0

    .line 1754
    :cond_3
    if-ge v5, v3, :cond_5

    .line 1755
    :try_start_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1798
    :catchall_0
    move-exception v6

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1799
    iget-object v7, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I
    invoke-static {v9}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v9

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1801
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1802
    const/4 p1, 0x0

    :cond_4
    throw v6

    .line 1756
    :cond_5
    if-ne v5, v3, :cond_2

    .line 1798
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1799
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I
    invoke-static {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v8

    invoke-virtual {v7, v11, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1801
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1802
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 1772
    :cond_6
    :try_start_2
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mWidgetDestroy:Z
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1773
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v7, 0x0

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mWidgetDestroy:Z
    invoke-static {v6, v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2502(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1798
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1799
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I
    invoke-static {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v8

    invoke-virtual {v7, v11, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1801
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1802
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 1777
    :cond_7
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->extractData(Landroid/database/Cursor;Landroid/graphics/Bitmap;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    move-result-object v2

    .line 1779
    .local v2, contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1780
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iget v6, v6, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->count:I

    iput v6, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->count:I

    .line 1781
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1785
    :cond_8
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->prepareContactPair()V

    .line 1787
    add-int/lit8 v5, v5, 0x1

    .line 1790
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I
    invoke-static {v6, v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2302(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 1794
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_9

    if-ne v5, v3, :cond_2

    .line 1798
    :cond_9
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1799
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I
    invoke-static {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v8

    invoke-virtual {v7, v11, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1801
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1802
    const/4 p1, 0x0

    .line 1806
    :cond_a
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mLoading:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1807
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mLoading:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCurrentListItemIndex:I
    invoke-static {v0, p2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3102(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 2083
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCurrentListLastItemIndex:I
    invoke-static {v0, p4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3202(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 2084
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v4, 0x0

    .line 2087
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mScrollState:I
    invoke-static {v3, p2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3302(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 2091
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2092
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2106
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2097
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2100
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2102
    .local v1, v:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    iget v0, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->pos_:I

    .line 2103
    .local v0, position:I
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCurrentListItemIndex:I
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 2206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2213
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2208
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->markTouchedAt(II)V

    goto :goto_0

    .line 2206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareContactPair()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1543
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mOrientationChange:Z
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1545
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1546
    .local v2, size:I
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1548
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_5

    .line 1549
    new-instance v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;

    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-direct {v1, v3, v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$1;)V

    .line 1550
    .local v1, pair:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;
    sub-int v3, v2, v0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 1551
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iput-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->lcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1552
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iput-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->ccontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1553
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iput-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->rcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1563
    :goto_1
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1554
    :cond_0
    sub-int v3, v2, v0

    if-lt v3, v7, :cond_1

    .line 1555
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iput-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->lcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1556
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iput-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->ccontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1557
    iput-object v5, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->rcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    goto :goto_1

    .line 1559
    :cond_1
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iput-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->lcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1560
    iput-object v5, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->ccontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1561
    iput-object v5, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->rcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    goto :goto_1

    .line 1567
    .end local v0           #i:I
    .end local v1           #pair:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;
    .end local v2           #size:I
    :cond_2
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1568
    .restart local v2       #size:I
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1570
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v2, :cond_5

    .line 1571
    new-instance v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;

    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-direct {v1, v3, v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$1;)V

    .line 1572
    .restart local v1       #pair:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;
    sub-int v3, v2, v0

    if-lt v3, v7, :cond_4

    .line 1573
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iput-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->lcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1574
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iput-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->rcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1579
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 1575
    :cond_4
    sub-int v3, v2, v0

    if-lt v3, v6, :cond_3

    .line 1576
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    iput-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->lcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1577
    iput-object v5, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->rcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    goto :goto_3

    .line 1582
    .end local v1           #pair:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;
    :cond_5
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mAdapter:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

    invoke-virtual {v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->clear()V

    .line 1538
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;Z)V
    .locals 19
    .parameter "cursor"
    .parameter "updateUI"

    .prologue
    .line 1812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a0e

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1813
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a0e

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1815
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-nez v13, :cond_3

    .line 1816
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2034
    :cond_2
    :goto_0
    return-void

    .line 1820
    :cond_3
    const/4 v11, 0x0

    .line 1821
    .local v11, position:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1824
    .local v6, cursor_size:I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1825
    .local v4, bmfo:Landroid/graphics/BitmapFactory$Options;
    const v7, 0x7f020033

    .line 1827
    .local v7, defaultPhotoResource:I
    const/4 v3, 0x0

    .line 1828
    .local v3, bm:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v7, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1831
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_24

    .line 1834
    const/4 v10, 0x1

    .line 1835
    .local v10, needResize:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 1837
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorCount:I
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2700(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v13

    if-eq v13, v6, :cond_9

    .line 1838
    const/4 v10, 0x1

    .line 1843
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorCount:I
    invoke-static {v13, v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2702(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 1845
    if-eqz v10, :cond_a

    .line 1847
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(I)V

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1002(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1849
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v14, 0x0

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static {v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2802(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 1862
    if-nez v11, :cond_f

    .line 1863
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1874
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 1876
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v14, 0x1

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedRefreshCursor:Z
    invoke-static {v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2402(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    .line 1877
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static {v13, v11}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2802(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_7

    .line 1996
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 1997
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1999
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2004
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2005
    const/16 p1, 0x0

    .line 2008
    :cond_7
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    if-eqz v13, :cond_2

    .line 2010
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_39

    .line 2012
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    .line 2013
    .local v12, rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    if-eqz v12, :cond_8

    .line 2010
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1840
    .end local v8           #i:I
    .end local v12           #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1852
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v11

    .line 1855
    if-eqz p1, :cond_b

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_b

    .line 1856
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1857
    const/16 p1, 0x0

    .line 1995
    :cond_b
    if-eqz p1, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_d

    .line 1996
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 1997
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1999
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2004
    :goto_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2005
    const/16 p1, 0x0

    .line 2008
    :cond_d
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    if-eqz v13, :cond_2

    .line 2010
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_6
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_40

    .line 2012
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    .line 2013
    .restart local v12       #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    if-eqz v12, :cond_e

    .line 2010
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1864
    .end local v8           #i:I
    .end local v12           #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    :cond_f
    if-ge v11, v6, :cond_13

    .line 1865
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1995
    .end local v10           #needResize:Z
    :catchall_0
    move-exception v13

    if-eqz p1, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_11

    .line 1996
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 1997
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a14

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a14

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1999
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a14

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2004
    :goto_7
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2005
    const/16 p1, 0x0

    .line 2008
    :cond_11
    sget-object v14, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    if-eqz v14, :cond_32

    .line 2010
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_8
    sget-object v14, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_31

    .line 2012
    sget-object v14, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    .line 2013
    .restart local v12       #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    if-eqz v12, :cond_12

    .line 2010
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1866
    .end local v8           #i:I
    .end local v12           #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    .restart local v10       #needResize:Z
    :cond_13
    if-ne v11, v6, :cond_5

    .line 1867
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v14, 0x1

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2902(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1995
    if-eqz p1, :cond_15

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_15

    .line 1996
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 1997
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1999
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2004
    :goto_9
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2005
    const/16 p1, 0x0

    .line 2008
    :cond_15
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    if-eqz v13, :cond_2

    .line 2010
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_a
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_3e

    .line 2012
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    .line 2013
    .restart local v12       #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    if-eqz v12, :cond_16

    .line 2010
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 1882
    .end local v8           #i:I
    .end local v12           #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    :cond_17
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mWidgetDestroy:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1883
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v14, 0x0

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mWidgetDestroy:Z
    invoke-static {v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2502(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    .line 1885
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_18

    .line 1886
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1887
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v14, 0x0

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1002(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1995
    if-eqz p1, :cond_1a

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_1a

    .line 1996
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 1997
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 1998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1999
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2004
    :goto_b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2005
    const/16 p1, 0x0

    .line 2008
    :cond_1a
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    if-eqz v13, :cond_2

    .line 2010
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_c
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_3b

    .line 2012
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    .line 2013
    .restart local v12       #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    if-eqz v12, :cond_1b

    .line 2010
    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 1892
    .end local v8           #i:I
    .end local v12           #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    :cond_1c
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->extractData(Landroid/database/Cursor;Landroid/graphics/Bitmap;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    move-result-object v5

    .line 1894
    .local v5, contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_1d

    .line 1895
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->prepareContactPair()V

    .line 1900
    add-int/lit8 v11, v11, 0x1

    .line 1903
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static {v13, v11}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2802(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 1905
    if-eqz p2, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-nez v13, :cond_1e

    .line 1907
    const/16 v13, 0xa

    if-ne v11, v13, :cond_23

    .line 1908
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1913
    :cond_1e
    :goto_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v13

    if-eqz v13, :cond_1f

    if-ne v11, v6, :cond_5

    .line 1995
    .end local v5           #contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    :cond_1f
    if-eqz p1, :cond_21

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_21

    .line 1996
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 1997
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 1998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1999
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2004
    :goto_e
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2005
    const/16 p1, 0x0

    .line 2008
    :cond_21
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    if-eqz v13, :cond_34

    .line 2010
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_f
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_33

    .line 2012
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    .line 2013
    .restart local v12       #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    if-eqz v12, :cond_22

    .line 2010
    :cond_22
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 1909
    .end local v8           #i:I
    .end local v12           #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    .restart local v5       #contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    :cond_23
    :try_start_6
    rem-int/lit8 v13, v11, 0x14

    if-nez v13, :cond_1e

    .line 1910
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_d

    .line 1918
    .end local v5           #contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .end local v10           #needResize:Z
    :cond_24
    const/4 v10, 0x1

    .line 1919
    .restart local v10       #needResize:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_25

    .line 1921
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorCount:I
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2700(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v13

    if-eq v13, v6, :cond_29

    .line 1922
    const/4 v10, 0x1

    .line 1927
    :cond_25
    :goto_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorCount:I
    invoke-static {v13, v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2702(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 1929
    if-eqz v10, :cond_2a

    .line 1930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1931
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v14, 0x0

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1002(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1002(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1936
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v14, 0x0

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static {v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2802(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 1948
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->reloadCalllog(Landroid/database/Cursor;)V

    .line 1949
    const/4 v9, 0x0

    .line 1950
    .local v9, nSize:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_11
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_1f

    .line 1952
    new-instance v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-direct {v5, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V

    .line 1953
    .restart local v5       #contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/DialerCallLog;

    iget-wide v13, v13, Lcom/android/htcdialer/search/DialerCallLog;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->GetContactInfoFromCallLogQuery(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Ljava/lang/Long;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    move-result-object v5

    .line 1955
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iput-wide v13, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    .line 1956
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/DialerCallLog;

    iget-object v13, v13, Lcom/android/htcdialer/search/DialerCallLog;->contact:Lcom/android/htcdialer/search/DialerContact;

    if-eqz v13, :cond_2f

    .line 1958
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/DialerCallLog;

    iget-object v13, v13, Lcom/android/htcdialer/search/DialerCallLog;->contact:Lcom/android/htcdialer/search/DialerContact;

    iget-object v13, v13, Lcom/android/htcdialer/search/DialerContact;->name:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->name:Ljava/lang/String;

    .line 1963
    :goto_12
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/DialerCallLog;

    iget-object v13, v13, Lcom/android/htcdialer/search/DialerCallLog;->number:Ljava/lang/String;

    iput-object v13, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    .line 1964
    const/4 v13, 0x0

    iput-object v13, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    .line 1965
    const/4 v13, 0x0

    iput v13, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->count:I

    .line 1966
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/DialerCallLog;

    iget v13, v13, Lcom/android/htcdialer/search/DialerCallLog;->type:I

    int-to-long v13, v13

    iput-wide v13, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->call_type:J

    .line 1967
    iget-object v2, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->accountType:Ljava/lang/String;

    .line 1968
    .local v2, accountType:Ljava/lang/String;
    const-string v13, "com.anddroid.contacts.sim"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setCallLogPhoto(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Z)V

    .line 1969
    iget-object v13, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    if-nez v13, :cond_26

    .line 1970
    iput-object v3, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 1971
    :cond_26
    const/4 v13, 0x1

    iput-boolean v13, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasContactPhotoId:Z

    .line 1973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_27

    .line 1974
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->prepareContactPair()V

    .line 1979
    add-int/lit8 v11, v11, 0x1

    .line 1982
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static {v13, v11}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2802(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 1984
    if-eqz p2, :cond_28

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-nez v13, :cond_28

    .line 1986
    const/16 v13, 0xa

    if-ne v11, v13, :cond_30

    .line 1987
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1950
    :cond_28
    :goto_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_11

    .line 1924
    .end local v2           #accountType:Ljava/lang/String;
    .end local v5           #contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .end local v8           #i:I
    .end local v9           #nSize:I
    :cond_29
    const/4 v10, 0x0

    goto/16 :goto_10

    .line 1940
    :cond_2a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v11

    .line 1941
    if-eqz p1, :cond_2b

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_2b

    .line 1942
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1943
    const/16 p1, 0x0

    .line 1995
    :cond_2b
    if-eqz p1, :cond_2d

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_2d

    .line 1996
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v13

    if-eqz v13, :cond_41

    .line 1997
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 1998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1999
    :cond_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2004
    :goto_14
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2005
    const/16 p1, 0x0

    .line 2008
    :cond_2d
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    if-eqz v13, :cond_2

    .line 2010
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_15
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_42

    .line 2012
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    .line 2013
    .restart local v12       #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    if-eqz v12, :cond_2e

    .line 2010
    :cond_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 1961
    .end local v12           #rawitem:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    .restart local v5       #contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .restart local v9       #nSize:I
    :cond_2f
    :try_start_7
    const-string v13, ""

    iput-object v13, v5, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->name:Ljava/lang/String;

    goto/16 :goto_12

    .line 1988
    .restart local v2       #accountType:Ljava/lang/String;
    :cond_30
    rem-int/lit8 v13, v11, 0x14

    if-nez v13, :cond_28

    .line 1989
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_13

    .line 2016
    .end local v2           #accountType:Ljava/lang/String;
    .end local v5           #contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .end local v9           #nSize:I
    .end local v10           #needResize:Z
    :cond_31
    sget-object v14, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2017
    const/4 v14, 0x0

    sput-object v14, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    .line 1995
    .end local v8           #i:I
    :cond_32
    throw v13

    .line 2016
    .restart local v8       #i:I
    .restart local v10       #needResize:Z
    :cond_33
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2017
    const/4 v13, 0x0

    sput-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    .line 2022
    .end local v8           #i:I
    :cond_34
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_36

    .line 2024
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a15

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_35

    .line 2025
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a15

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2026
    :cond_35
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1a15

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2030
    :cond_36
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mLoading:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 2031
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mLoading:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/widget/TextView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2001
    .end local v10           #needResize:Z
    :cond_37
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static/range {v17 .. v17}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .restart local v10       #needResize:Z
    :cond_38
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 2016
    .restart local v8       #i:I
    :cond_39
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2017
    :goto_16
    const/4 v13, 0x0

    sput-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2001
    .end local v8           #i:I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_b

    .line 2016
    .restart local v8       #i:I
    :cond_3b
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_16

    .line 2001
    .end local v8           #i:I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_e

    :cond_3d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 2016
    .restart local v8       #i:I
    :cond_3e
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_16

    .line 2001
    .end local v8           #i:I
    :cond_3f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 2016
    .restart local v8       #i:I
    :cond_40
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_16

    .line 2001
    .end local v8           #i:I
    :cond_41
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x1a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I
    invoke-static/range {v16 .. v16}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_14

    .line 2016
    .restart local v8       #i:I
    :cond_42
    sget-object v13, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_16
.end method

.method public setDefaultItem()V
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-virtual {v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->finish()V

    .line 1532
    return-void
.end method

.method public updateList(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 1587
    if-nez p1, :cond_1

    .line 1589
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1591
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mAdapter:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->changeAdapter(Ljava/util/ArrayList;)V

    .line 1597
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1594
    check-cast v0, Ljava/util/ArrayList;

    .line 1595
    .local v0, lMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;>;"
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mAdapter:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

    invoke-virtual {v1, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->changeAdapter(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2063
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->invalidateViews()V

    .line 2064
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->postInvalidate()V

    .line 2066
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->bRemoveContact:Z

    if-eqz v0, :cond_1

    .line 2067
    iput-boolean v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->bRemoveContact:Z

    .line 2078
    :cond_0
    :goto_0
    return-void

    .line 2071
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1a0e

    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2074
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorTerminated:Z
    invoke-static {v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z
    invoke-static {v0, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$502(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    goto :goto_0
.end method
