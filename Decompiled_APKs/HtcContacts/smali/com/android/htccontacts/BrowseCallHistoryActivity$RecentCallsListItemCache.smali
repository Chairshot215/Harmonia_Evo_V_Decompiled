.class public final Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecentCallsListItemCache"
.end annotation


# instance fields
.field public date:J

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

.field public mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

.field public mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

.field public mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field public mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field public mLookup:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mPersonId:J

.field public mRecordNumber:J

.field public mbSim:Z

.field videoIndicator:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 572
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    .line 601
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-nez v1, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    .line 606
    .local v0, badge:Lcom/htc/widget/QuickContactBadge;
    if-eqz v0, :cond_2

    .line 607
    const v1, 0x2080846

    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    .line 610
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setPresenceStatus(Lcom/android/htccontacts/widget/ImPresence;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 639
    return-void
.end method

.method public setPresenceViewVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 624
    return-void
.end method
