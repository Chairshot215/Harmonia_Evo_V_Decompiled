.class public Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ForwardDetailView.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public dateView:Landroid/widget/TextView;

.field public mIsLast:Z

.field public mMsgViewType:I

.field public mType:I

.field public mainLayout:Landroid/view/View;

.field final synthetic this$1:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;IZ)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "isLast"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->this$1:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput p2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mType:I

    .line 737
    iput-boolean p3, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mIsLast:Z

    .line 738
    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 745
    iget v1, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mType:I

    if-ne v1, v0, :cond_0

    .line 747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 3
    .parameter "listitem"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 756
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;

    if-eqz v2, :cond_2

    .line 759
    check-cast p1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;

    .end local p1
    iget v2, p1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mType:I

    if-nez v2, :cond_1

    .line 775
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 762
    goto :goto_0

    .line 765
    .restart local p1
    :cond_2
    instance-of v2, p1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;

    if-eqz v2, :cond_4

    .line 766
    check-cast p1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;

    .end local p1
    iget v2, p1, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mType:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mType:I

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 775
    goto :goto_0

    .line 770
    .restart local p1
    :cond_4
    instance-of v2, p1, Lcom/htc/widget/HtcListItemSeparable;

    if-eqz v2, :cond_3

    .line 771
    iget v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mType:I

    if-ne v2, v0, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter$ViewHolder;->mIsLast:Z

    if-eqz v2, :cond_3

    goto :goto_0
.end method
