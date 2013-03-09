.class Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimpleVCardListViewAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SimpleVCardListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# static fields
.field public static final VIEW_TYPE_LABEL_ONLY:I = 0x0

.field public static final VIEW_TYPE_PROPERTY_INFO:I = 0x1

.field public static final VIEW_TYPE_SEPARATOR:I = 0x2


# instance fields
.field public mBackground:Landroid/view/View;

.field public mDataView:Landroid/widget/TextView;

.field public mLabelView:Landroid/widget/TextView;

.field public mShouldSeparate:Z

.field public mViewType:I

.field final synthetic this$0:Lcom/android/mms/ui/SimpleVCardListViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->this$0:Lcom/android/mms/ui/SimpleVCardListViewAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mShouldSeparate:Z

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 632
    iget v1, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mViewType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mViewType:I

    if-ne v1, v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 4
    .parameter "listitem"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 607
    if-nez p1, :cond_0

    move v0, v1

    .line 628
    .end local p1
    :goto_0
    return v0

    .line 611
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 613
    check-cast v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;

    iget v0, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mViewType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 614
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 616
    check-cast v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;

    iget v0, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mViewType:I

    if-nez v0, :cond_2

    move v0, v2

    .line 617
    goto :goto_0

    .line 619
    :cond_2
    check-cast p1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;

    .end local p1
    iget-boolean v0, p1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mShouldSeparate:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 620
    goto :goto_0

    :cond_3
    move v0, v2

    .line 628
    goto :goto_0
.end method
