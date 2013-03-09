.class Lcom/android/htccontacts/ui/QuickContactWindow$3;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;->onIndicatorResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

.field final synthetic val$result:Lcom/android/htccontacts/indicator/IndicatorResult;

.field final synthetic val$totalCount:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/QuickContactWindow;Lcom/android/htccontacts/indicator/IndicatorResult;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    iput-object p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->val$result:Lcom/android/htccontacts/indicator/IndicatorResult;

    iput p3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->val$totalCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 2293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->val$result:Lcom/android/htccontacts/indicator/IndicatorResult;

    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getStatusInfo()Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    move-result-object v12

    .line 2294
    .local v12, statusInfo:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    if-eqz v12, :cond_0

    .line 2295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;
    invoke-static {v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1100(Lcom/android/htccontacts/ui/QuickContactWindow;)Lcom/android/htccontacts/util/DataStatus;

    move-result-object v1

    iget-object v2, v12, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    iget-wide v3, v12, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    iget-object v5, v12, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    iget v6, v12, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    iget v7, v12, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/htccontacts/util/DataStatus;->possibleUpdate(Ljava/lang/String;JLjava/lang/String;II)V

    .line 2302
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;
    invoke-static {v2}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1100(Lcom/android/htccontacts/ui/QuickContactWindow;)Lcom/android/htccontacts/util/DataStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/util/DataStatus;->isValid()Z

    move-result v2

    #setter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mHasValidSocial:Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1202(Lcom/android/htccontacts/ui/QuickContactWindow;Z)Z

    .line 2303
    const-string v1, "sn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;
    invoke-static {v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1100(Lcom/android/htccontacts/ui/QuickContactWindow;)Lcom/android/htccontacts/util/DataStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', timestamp: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;
    invoke-static {v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1100(Lcom/android/htccontacts/ui/QuickContactWindow;)Lcom/android/htccontacts/util/DataStatus;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1300(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', isValid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mHasValidSocial:Z
    invoke-static {v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1200(Lcom/android/htccontacts/ui/QuickContactWindow;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mMode:I
    invoke-static {v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1400(Lcom/android/htccontacts/ui/QuickContactWindow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mHasValidSocial:Z
    invoke-static {v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1200(Lcom/android/htccontacts/ui/QuickContactWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mMode:I
    invoke-static {v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1400(Lcom/android/htccontacts/ui/QuickContactWindow;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mMode:I
    invoke-static {v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1400(Lcom/android/htccontacts/ui/QuickContactWindow;)I

    move-result v3

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->getHeaderView(I)Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1600(Lcom/android/htccontacts/ui/QuickContactWindow;I)Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1502(Lcom/android/htccontacts/ui/QuickContactWindow;Landroid/view/View;)Landroid/view/View;

    .line 2308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    const v2, 0x7f0700f8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;
    invoke-static {v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1100(Lcom/android/htccontacts/ui/QuickContactWindow;)Lcom/android/htccontacts/util/DataStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1700(Lcom/android/htccontacts/ui/QuickContactWindow;ILjava/lang/CharSequence;)V

    .line 2309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    const v2, 0x7f0700f9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;
    invoke-static {v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1100(Lcom/android/htccontacts/ui/QuickContactWindow;)Lcom/android/htccontacts/util/DataStatus;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1300(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1700(Lcom/android/htccontacts/ui/QuickContactWindow;ILjava/lang/CharSequence;)V

    .line 2311
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1800(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    .line 2312
    .local v16, viewCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    .line 2313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1800(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2314
    .local v15, v:Landroid/view/View;
    const v1, 0x7f0700fb

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 2315
    .local v14, tagView:Landroid/view/View;
    if-nez v14, :cond_3

    .line 2312
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2318
    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 2319
    .local v13, tag:Ljava/lang/Object;
    if-eqz v13, :cond_2

    .line 2322
    instance-of v1, v13, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    if-eqz v1, :cond_2

    move-object v8, v13

    .line 2325
    check-cast v8, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .line 2326
    .local v8, action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-interface {v8}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2327
    const v1, 0x7f0700fc

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2328
    .local v9, ball:Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 2329
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->val$totalCount:I

    if-lez v1, :cond_2

    .line 2330
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1300(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_notification_on"

    const v3, 0x208006a

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    .line 2332
    .local v11, rId:I
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1300(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x203002a

    invoke-virtual {v9, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2335
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->val$totalCount:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_4

    .line 2336
    const-string v1, "99+"

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2339
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->val$totalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2345
    .end local v8           #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .end local v9           #ball:Landroid/widget/TextView;
    .end local v11           #rId:I
    .end local v13           #tag:Ljava/lang/Object;
    .end local v14           #tagView:Landroid/view/View;
    .end local v15           #v:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/ui/QuickContactWindow$3;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow;->considerShowing()V
    invoke-static {v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1900(Lcom/android/htccontacts/ui/QuickContactWindow;)V

    .line 2346
    return-void
.end method
