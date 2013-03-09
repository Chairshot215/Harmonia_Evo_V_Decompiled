.class public Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MessageTimestampListAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTimestampListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public dateView:Landroid/widget/TextView;

.field public mBubbleFlag:I

.field public mIsLast:Z

.field mLeftPadding:Landroid/view/View;

.field mMsgView:Landroid/view/View;

.field public mMsgViewType:I

.field mRightPadding:Landroid/view/View;

.field mSensor:Landroid/widget/LinearLayout;

.field public mType:I

.field public mainLayout:Landroid/view/View;


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .parameter "type"
    .parameter "isLast"

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mType:I

    .line 191
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mIsLast:Z

    .line 192
    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 199
    iget v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mType:I

    if-ne v1, v0, :cond_0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 2
    .parameter "listitem"

    .prologue
    const/4 v0, 0x1

    .line 210
    instance-of v1, p1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;

    if-eqz v1, :cond_1

    .line 211
    check-cast p1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;

    .end local p1
    iget v1, p1, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mType:I

    if-nez v1, :cond_2

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 215
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/htc/widget/HtcListItemSeparable;

    if-eqz v1, :cond_2

    .line 216
    iget v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mType:I

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageTimestampListAdapter$ViewHolder;->mIsLast:Z

    if-nez v1, :cond_0

    .line 220
    .end local p1
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
