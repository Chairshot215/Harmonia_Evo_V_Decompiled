.class Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->notifyChanged(JLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

.field final synthetic val$activity:Lcom/android/htccontacts/app/ContactsListActivity;

.field final synthetic val$postContactId:J

.field final synthetic val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;JLcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;Lcom/android/htccontacts/app/ContactsListActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iput-wide p2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$postContactId:J

    iput-object p4, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iput-object p5, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$activity:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1680
    iget-wide v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$postContactId:J

    iget-object v4, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-wide v4, v4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1731
    :goto_0
    return-void

    .line 1683
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iget-object v2, v2, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1684
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-object v2, v2, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 1685
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-object v2, v2, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 1686
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iget-object v2, v2, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iget v2, v2, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    if-eqz v2, :cond_3

    .line 1687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iget v3, v3, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1689
    .local v10, key:Ljava/lang/String;
    sget-object v2, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    .line 1690
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_1

    .line 1692
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$activity:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1693
    .local v12, thisRes:Landroid/content/res/Resources;
    const v2, 0x7f090065

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1694
    .local v13, width:I
    const v2, 0x7f090066

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1695
    .local v7, height:I
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$activity:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 1696
    .local v11, packageRes:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iget v2, v2, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    invoke-static {v11, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1697
    .local v9, iconBitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_1

    .line 1698
    add-int/lit8 v2, v13, 0xa

    const/4 v3, 0x1

    invoke-static {v9, v2, v7, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1700
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v11, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1701
    .local v1, bitmapDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1702
    .local v0, scaleDrawable:Landroid/graphics/drawable/Drawable;
    move-object v8, v0

    .line 1703
    sget-object v2, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    .end local v0           #scaleDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #bitmapDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #height:I
    .end local v9           #iconBitmap:Landroid/graphics/Bitmap;
    .end local v11           #packageRes:Landroid/content/res/Resources;
    .end local v12           #thisRes:Landroid/content/res/Resources;
    .end local v13           #width:I
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 1715
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-object v2, v2, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 1716
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-object v2, v2, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v8, v3, v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1710
    :catch_0
    move-exception v6

    .line 1711
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ContactsListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load image - package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->val$status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    iget-object v4, v4, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", back to the original way..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1719
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-object v2, v2, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    goto/16 :goto_0

    .line 1724
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #key:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-object v2, v2, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v4, v5, v14}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1728
    :cond_4
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-object v2, v2, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 1729
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-object v2, v2, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
