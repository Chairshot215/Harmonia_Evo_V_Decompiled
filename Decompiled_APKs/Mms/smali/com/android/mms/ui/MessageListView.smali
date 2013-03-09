.class public final Lcom/android/mms/ui/MessageListView;
.super Lcom/htc/widget/HtcListView;
.source "MessageListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MessageListView"


# instance fields
.field private final TOUCH_SLOP_SQUARE:I

.field private bReset:Z

.field bZoom:Z

.field private mAttachmentView:Landroid/view/View;

.field private mEditorFocusable:Z

.field private mEditorText:Landroid/view/View;

.field mFingerBeginDistance:I

.field mFingerBeginX:I

.field mFingerBeginX2:I

.field mFingerBeginY:I

.field mFingerBeginY2:I

.field mFingerEndDistance:I

.field private mHeightLand:I

.field private mHeightPort:I

.field private mKeepTranscriptMode:Z

.field private mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

.field private mMinFootHeight:I

.field private mMmsEditView:Landroid/view/View;

.field private mMmsMinFootHeight:I

.field private mMultiTouchMode:Z

.field private mOrientation:I

.field private mPanelView:Landroid/view/View;

.field private mScrolling:Z

.field private mSipHeight:I

.field private mSpaceView:Landroid/view/View;

.field mTextSizeChangeListener:Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;

.field private mbNewMessave:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    .line 52
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    .line 53
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    .line 56
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    .line 57
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mbNewMessave:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorFocusable:Z

    .line 60
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    .line 62
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mHeightLand:I

    .line 63
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mHeightPort:I

    .line 66
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mOrientation:I

    .line 67
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mKeepTranscriptMode:Z

    .line 70
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 71
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bReset:Z

    .line 74
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    .line 75
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mAttachmentView:Landroid/view/View;

    .line 76
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mMmsEditView:Landroid/view/View;

    .line 77
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mScrolling:Z

    .line 771
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginX:I

    .line 772
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginY:I

    .line 773
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginX2:I

    .line 774
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginY2:I

    .line 775
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginDistance:I

    .line 776
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerEndDistance:I

    .line 777
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mMultiTouchMode:Z

    .line 778
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bZoom:Z

    .line 779
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/mms/ui/MessageListView;->TOUCH_SLOP_SQUARE:I

    .line 922
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mTextSizeChangeListener:Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    .line 52
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    .line 53
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    .line 56
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    .line 57
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mbNewMessave:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorFocusable:Z

    .line 60
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    .line 62
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mHeightLand:I

    .line 63
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mHeightPort:I

    .line 66
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mOrientation:I

    .line 67
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mKeepTranscriptMode:Z

    .line 70
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 71
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bReset:Z

    .line 74
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    .line 75
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mAttachmentView:Landroid/view/View;

    .line 76
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mMmsEditView:Landroid/view/View;

    .line 77
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mScrolling:Z

    .line 771
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginX:I

    .line 772
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginY:I

    .line 773
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginX2:I

    .line 774
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginY2:I

    .line 775
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginDistance:I

    .line 776
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerEndDistance:I

    .line 777
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mMultiTouchMode:Z

    .line 778
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bZoom:Z

    .line 779
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/mms/ui/MessageListView;->TOUCH_SLOP_SQUARE:I

    .line 922
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView;->mTextSizeChangeListener:Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView;->init(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method private MultiTouchMovement(Landroid/view/MotionEvent;IIII)V
    .locals 9
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "x2"
    .parameter "y2"

    .prologue
    const/16 v8, 0x4e20

    const/16 v7, -0x4e20

    const/4 v6, 0x1

    .line 861
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageListView;->mMultiTouchMode:Z

    .line 862
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int p4, v5

    .line 863
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int p5, v5

    .line 865
    iget v5, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginDistance:I

    if-nez v5, :cond_1

    .line 866
    iput p2, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginX:I

    .line 867
    iput p3, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginY:I

    .line 868
    iput p4, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginX2:I

    .line 869
    iput p5, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginY2:I

    .line 870
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView;->distance(IIII)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginDistance:I

    .line 873
    iget-object v5, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 874
    .local v4, param:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 920
    .end local v4           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView;->distance(IIII)I

    move-result v1

    .line 878
    .local v1, dis:I
    iget v5, p0, Lcom/android/mms/ui/MessageListView;->mFingerEndDistance:I

    if-nez v5, :cond_5

    .line 879
    iget v5, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginDistance:I

    sub-int v0, v1, v5

    .line 880
    .local v0, diff:I
    iget v5, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginDistance:I

    iput v5, p0, Lcom/android/mms/ui/MessageListView;->mFingerEndDistance:I

    .line 881
    if-lez v0, :cond_4

    if-le v0, v8, :cond_4

    .line 882
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageListView;->bZoom:Z

    .line 903
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView;->bZoom:Z

    if-eqz v5, :cond_0

    .line 904
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v2

    .line 905
    .local v2, instance:Lcom/android/mms/util/TextSizeManager;
    if-eqz v2, :cond_3

    .line 906
    invoke-virtual {v2}, Lcom/android/mms/util/TextSizeManager;->getPinchLevel()I

    move-result v3

    .line 908
    .local v3, level:I
    iget v5, p0, Lcom/android/mms/ui/MessageListView;->mFingerEndDistance:I

    if-le v1, v5, :cond_8

    invoke-virtual {v2}, Lcom/android/mms/util/TextSizeManager;->getPinchLargestLevel()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 910
    iget-object v5, p0, Lcom/android/mms/ui/MessageListView;->mTextSizeChangeListener:Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;->onTextSizeChanged(I)V

    .line 917
    .end local v3           #level:I
    :cond_3
    :goto_2
    iput v1, p0, Lcom/android/mms/ui/MessageListView;->mFingerEndDistance:I

    goto :goto_0

    .line 884
    .end local v2           #instance:Lcom/android/mms/util/TextSizeManager;
    :cond_4
    if-gez v0, :cond_2

    if-ge v0, v7, :cond_2

    .line 885
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageListView;->bZoom:Z

    goto :goto_1

    .line 891
    .end local v0           #diff:I
    :cond_5
    iget v5, p0, Lcom/android/mms/ui/MessageListView;->mFingerEndDistance:I

    sub-int v0, v1, v5

    .line 893
    .restart local v0       #diff:I
    if-lez v0, :cond_6

    if-le v0, v8, :cond_6

    .line 894
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageListView;->bZoom:Z

    goto :goto_1

    .line 896
    :cond_6
    if-gez v0, :cond_7

    if-ge v0, v7, :cond_7

    .line 897
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageListView;->bZoom:Z

    goto :goto_1

    .line 900
    :cond_7
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView;->bZoom:Z

    goto :goto_1

    .line 912
    .restart local v2       #instance:Lcom/android/mms/util/TextSizeManager;
    .restart local v3       #level:I
    :cond_8
    iget v5, p0, Lcom/android/mms/ui/MessageListView;->mFingerEndDistance:I

    if-ge v1, v5, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/util/TextSizeManager;->getPinchSmallestLevel()I

    move-result v5

    if-le v3, v5, :cond_3

    .line 914
    iget-object v5, p0, Lcom/android/mms/ui/MessageListView;->mTextSizeChangeListener:Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v5, v6}, Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;->onTextSizeChanged(I)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    return-object v0
.end method

.method private distance(IIII)I
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 857
    sub-int v0, p1, p3

    sub-int v1, p1, p3

    mul-int/2addr v0, v1

    sub-int v1, p2, p4

    sub-int v2, p2, p4

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private resetAttachmentPanelHeight(IIIII)V
    .locals 6
    .parameter "footH"
    .parameter "footT"
    .parameter "bottom"
    .parameter "footB"
    .parameter "spaceH"

    .prologue
    const/4 v5, -0x2

    .line 723
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 728
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mMmsEditView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 731
    .local v0, attachmentHeight:I
    if-lt v0, p1, :cond_0

    .line 732
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v5, :cond_0

    .line 734
    const-string v2, "MessageListView"

    const-string v3, "mms set min height"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v2, "MessageListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "editor h> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v2, "MessageListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "footview h> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 739
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    iput p1, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    .line 743
    :cond_0
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mScrolling:Z

    if-nez v2, :cond_1

    sub-int v2, p3, p2

    if-ge p1, v2, :cond_1

    if-ge p4, p3, :cond_1

    .line 744
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v5, :cond_1

    .line 746
    const-string v2, "MessageListView"

    const-string v3, "mms footer wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    sub-int v2, p3, p2

    iput v2, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    .line 750
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    if-ge p1, v2, :cond_2

    .line 751
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v5, :cond_2

    .line 753
    const-string v2, "MessageListView"

    const-string v3, "mms set height"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v2, "MessageListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min h> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v2, "MessageListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "footview h> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget v2, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 763
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    .line 767
    :cond_2
    return-void
.end method

.method private resetTextPanelHeight(IIIII)V
    .locals 6
    .parameter "footH"
    .parameter "footT"
    .parameter "bottom"
    .parameter "footB"
    .parameter "spaceH"

    .prologue
    const/4 v5, -0x2

    .line 683
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 684
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    if-nez v2, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 687
    .local v1, textH:I
    if-lt v1, p1, :cond_2

    .line 688
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v5, :cond_2

    .line 691
    const-string v2, "MessageListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "editor h> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v2, "MessageListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "footview h> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v2, "MessageListView"

    const-string v3, "request layout> "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 696
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iput p1, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    .line 702
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mScrolling:Z

    if-nez v2, :cond_3

    sub-int v2, p3, p2

    if-ge p1, v2, :cond_3

    if-ge p4, p3, :cond_3

    .line 703
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v5, :cond_3

    .line 704
    sub-int v2, p3, p2

    iput v2, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    .line 706
    :cond_3
    iget v2, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    if-ge p1, v2, :cond_0

    .line 707
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v5, :cond_0

    .line 710
    const-string v2, "MessageListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min h> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v2, "MessageListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "footview h> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v2, "MessageListView"

    const-string v3, "request layout2> "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget v2, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 715
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    .line 716
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected clearTranscriptMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 663
    iput v0, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    .line 664
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mbNewMessave:Z

    .line 665
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mContext:Landroid/content/Context;

    .line 478
    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 480
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, -0x2

    .line 301
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView;->dispatchDraw2(Landroid/graphics/Canvas;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->isFootAdjusted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 309
    const-string v4, "MessageListView"

    const-string v5, "dispatchDraw relayout"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->layoutChildren()V

    .line 311
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListView;->setFootAdjusted(Z)V

    .line 316
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 317
    .local v2, spaceH:I
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 318
    .local v3, textH:I
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 322
    .local v0, footH:I
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 324
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    if-lt v3, v0, :cond_3

    if-ltz v2, :cond_3

    .line 325
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v7, :cond_3

    .line 328
    const-string v4, "MessageListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "editor h> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v4, "MessageListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "footview h> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v4, "MessageListView"

    const-string v5, "request layout> "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iput v0, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    .line 338
    :cond_3
    iget v4, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    if-ge v0, v4, :cond_0

    .line 339
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v7, :cond_0

    .line 342
    const-string v4, "MessageListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "editor h> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v4, "MessageListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "footview h> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v4, "MessageListView"

    const-string v5, "request layout2> "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget v4, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 347
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    .line 348
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method protected dispatchDraw1(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v4, v5

    .line 357
    .local v0, above:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 358
    .local v3, thisHigh:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v2

    .line 360
    .local v2, height:I
    iget v4, p0, Lcom/android/mms/ui/MessageListView;->mEmptyHeight:I

    const/high16 v5, -0x8000

    if-ne v4, v5, :cond_0

    .line 366
    add-int v4, v3, v0

    if-ge v4, v2, :cond_0

    .line 367
    sub-int v1, v2, v0

    .line 369
    .local v1, footHeight:I
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 370
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 386
    .end local v1           #footHeight:I
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected dispatchDraw2(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 390
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 393
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mMultiTouchMode:Z

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 398
    .local v5, spaceH:I
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 399
    .local v1, footH:I
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 400
    .local v2, footT:I
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 401
    .local v4, footB:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getBottom()I

    move-result v3

    .line 410
    .local v3, bottom:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->isFootAdjusted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    const-string v0, "MessageListView"

    const-string v7, "dispatchDraw relayout"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->layoutChildren()V

    .line 413
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageListView;->setFootAdjusted(Z)V

    .line 415
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 436
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 438
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 439
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 440
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getBottom()I

    move-result v3

    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mAttachmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    .line 443
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListView;->resetAttachmentPanelHeight(IIIII)V

    goto :goto_0

    .line 422
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->bReset:Z

    if-eqz v0, :cond_1

    .line 423
    const-string v0, "MessageListView"

    const-string v7, "bReset true"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 427
    .local v6, top:I
    const-string v0, "MessageListView"

    const-string v7, "setAdjustFooter true"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageListView;->setAdjustFooter(Z)V

    .line 429
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageListView;->setForceAdjustFooter(Z)V

    .line 430
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageListView;->setFootAdjusted(Z)V

    .line 431
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->requestLayout()V

    .line 433
    iput-boolean v9, p0, Lcom/android/mms/ui/MessageListView;->bReset:Z

    goto :goto_1

    .end local v6           #top:I
    :cond_3
    move-object v0, p0

    .line 446
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListView;->resetTextPanelHeight(IIIII)V

    goto/16 :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 842
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMultiTouchTextSizeChange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mMultiTouchMode:Z

    if-eqz v0, :cond_2

    .line 844
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginDistance:I

    if-nez v0, :cond_1

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 846
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 847
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 853
    :goto_0
    return v0

    .line 850
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 853
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 617
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->mKeepTranscriptMode:Z

    if-nez v4, :cond_6

    .line 619
    iget v4, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    if-lez v4, :cond_1

    .line 620
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListView;->setTranscriptMode(I)V

    .line 636
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 637
    .local v0, hwkeyhidden:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v2, :cond_4

    move v1, v2

    .line 639
    .local v1, isHardwareKeyboardAvailable:Z
    :goto_2
    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 641
    const/high16 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setDescendantFocusability(I)V

    .line 650
    .end local v0           #hwkeyhidden:Z
    .end local v1           #isHardwareKeyboardAvailable:Z
    :cond_0
    :goto_3
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mKeepTranscriptMode:Z

    .line 651
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mbNewMessave:Z

    .line 652
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->handleDataChanged()V

    .line 653
    return-void

    .line 622
    :cond_1
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->mbNewMessave:Z

    if-eqz v4, :cond_2

    .line 623
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListView;->setTranscriptMode(I)V

    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView;->setTranscriptMode(I)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 636
    goto :goto_1

    .restart local v0       #hwkeyhidden:Z
    :cond_4
    move v1, v3

    .line 637
    goto :goto_2

    .line 643
    .restart local v1       #isHardwareKeyboardAvailable:Z
    :cond_5
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setDescendantFocusability(I)V

    goto :goto_3

    .line 648
    .end local v0           #hwkeyhidden:Z
    .end local v1           #isHardwareKeyboardAvailable:Z
    :cond_6
    const-string v2, "MessageListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDataChanged:mKeepTranscriptMode> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView;->mKeepTranscriptMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setFillEmpty(Z)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setTopBorderHeight(I)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setBottomBorderHeight(I)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setAdjustFooter(Z)V

    .line 105
    invoke-virtual {p0, p0}, Lcom/android/mms/ui/MessageListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 108
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 110
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const v0, 0x20a0015

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setSelector(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public isEditorFocusable()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorFocusable:Z

    return v0
.end method

.method public isMultiTouchMode()Z
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mMultiTouchMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 940
    const-string v4, "MessageListView"

    const-string v5, "onConfigurationChanged: "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 944
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v2, :cond_2

    move v1, v2

    .line 946
    .local v1, isHardwareKeyboardAvailable:Z
    :goto_0
    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 947
    .local v0, hwkeyhidden:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 949
    const/high16 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setDescendantFocusability(I)V

    .line 956
    :cond_0
    :goto_2
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/mms/ui/MessageListView;->mOrientation:I

    if-eq v2, v3, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->resetPanelView()V

    .line 959
    :cond_1
    return-void

    .end local v0           #hwkeyhidden:Z
    .end local v1           #isHardwareKeyboardAvailable:Z
    :cond_2
    move v1, v3

    .line 944
    goto :goto_0

    .restart local v1       #isHardwareKeyboardAvailable:Z
    :cond_3
    move v0, v3

    .line 946
    goto :goto_1

    .line 951
    .restart local v0       #hwkeyhidden:Z
    :cond_4
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setDescendantFocusability(I)V

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
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
    .line 671
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "MessageListView"

    const-string v1, "mEditorText.clearFocus()_1>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 675
    :cond_0
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 454
    packed-switch p1, :pswitch_data_0

    .line 471
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 456
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/view/MessageView;

    .line 457
    .local v2, view:Lcom/android/mms/view/MessageView;
    if-eqz v2, :cond_0

    .line 461
    invoke-interface {v2}, Lcom/android/mms/view/MessageView;->getBoundItem()Lcom/android/mms/msg/AbstractMessage;

    move-result-object v1

    .line 462
    .local v1, msg:Lcom/android/mms/msg/AbstractMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 465
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v1}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const/4 v3, 0x1

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/mms/ui/MessageListView;->mOrientation:I

    if-ne v3, v6, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v3

    if-lt v3, v6, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 229
    .local v0, bottom:I
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 230
    .local v2, top:I
    sub-int v1, v0, v2

    .line 235
    .local v1, listH:I
    iget v3, p0, Lcom/android/mms/ui/MessageListView;->mHeightLand:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/mms/ui/MessageListView;->mHeightLand:I

    if-le v1, v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 241
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->mKeepTranscriptMode:Z

    .line 249
    .end local v0           #bottom:I
    .end local v1           #listH:I
    .end local v2           #top:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListView;->setFocusableInTouchMode(Z)V

    .line 253
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListView;->onLayout(ZIIII)V

    .line 254
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListView;->setFocusableInTouchMode(Z)V

    .line 278
    :goto_1
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 282
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListView;->onMeasure(II)V

    .line 291
    return-void
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 188
    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    .line 189
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mEditorFocusable:Z

    .line 202
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 204
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorFocusable:Z

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget v0, p0, Lcom/android/mms/ui/MessageListView;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 195
    const-string v0, "MessageListView"

    const-string v1, "mEditorText.clearFocus()>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListView;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 174
    if-eqz p2, :cond_0

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mScrolling:Z

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mScrolling:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 498
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onSizeChanged(IIII)V

    .line 500
    new-instance v7, Lcom/android/mms/ui/MessageListView$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessageListView$1;-><init>(Lcom/android/mms/ui/MessageListView;)V

    .line 508
    .local v7, r:Ljava/lang/Runnable;
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v0, v8, Landroid/content/res/Configuration;->orientation:I

    .line 515
    .local v0, config:I
    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mOrientation:I

    if-gez v8, :cond_0

    iput v0, p0, Lcom/android/mms/ui/MessageListView;->mOrientation:I

    .line 517
    :cond_0
    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mOrientation:I

    if-eq v0, v8, :cond_8

    const/4 v5, 0x1

    .line 518
    .local v5, orientChange:Z
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListView;->setOnConfigurationChange(Z)V

    .line 519
    iput v0, p0, Lcom/android/mms/ui/MessageListView;->mOrientation:I

    .line 527
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 528
    .local v1, dm:Landroid/util/DisplayMetrics;
    const/4 v8, 0x2

    if-ne v0, v8, :cond_9

    .line 529
    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mHeightLand:I

    if-ge v8, p2, :cond_1

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge p2, v8, :cond_1

    iput p2, p0, Lcom/android/mms/ui/MessageListView;->mHeightLand:I

    .line 530
    :cond_1
    iget v3, p0, Lcom/android/mms/ui/MessageListView;->mHeightLand:I

    .line 538
    .local v3, listH:I
    :goto_1
    iget v4, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    .line 539
    .local v4, oldSipH:I
    if-nez p2, :cond_b

    .line 541
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    .line 560
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 564
    const/4 v2, 0x0

    .line 565
    .local v2, isWrapContent:Z
    iget-object v8, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 566
    .local v6, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_3

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 568
    const/4 v2, 0x1

    .line 571
    :cond_3
    if-nez v2, :cond_6

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    if-eq v0, v8, :cond_5

    :cond_4
    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    if-le v4, v8, :cond_6

    .line 573
    :cond_5
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageListView;->setFootAdjusted(Z)V

    .line 575
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/mms/ui/MessageListView;->bReset:Z

    .line 586
    .end local v2           #isWrapContent:Z
    .end local v6           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_7

    .line 587
    const-string v8, "MessageListView"

    const-string v9, "editor lost focus, request focus"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v8, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 592
    :cond_7
    return-void

    .line 517
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #listH:I
    .end local v4           #oldSipH:I
    .end local v5           #orientChange:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    .line 532
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v5       #orientChange:Z
    :cond_9
    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mHeightPort:I

    if-ge v8, p2, :cond_a

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge p2, v8, :cond_a

    iput p2, p0, Lcom/android/mms/ui/MessageListView;->mHeightPort:I

    .line 533
    :cond_a
    iget v3, p0, Lcom/android/mms/ui/MessageListView;->mHeightPort:I

    .restart local v3       #listH:I
    goto :goto_1

    .line 542
    .restart local v4       #oldSipH:I
    :cond_b
    if-eq v3, p2, :cond_c

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne p2, v8, :cond_d

    .line 544
    :cond_c
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    goto :goto_2

    .line 545
    :cond_d
    if-le v3, p2, :cond_e

    .line 547
    sub-int v8, v3, p2

    iput v8, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    .line 550
    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    const/16 v9, 0x8c

    if-ge v8, v9, :cond_2

    .line 551
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/mms/ui/MessageListView;->mSipHeight:I

    goto :goto_2

    .line 555
    :cond_e
    const-string v8, "MessageListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "something error? listH> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", h> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v8, "MessageListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 785
    .local v8, pointerCount:I
    const-string v0, "soso"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listview event: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 834
    :cond_0
    :sswitch_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 797
    :sswitch_1
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMultiTouchTextSizeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v2, v0

    .line 799
    .local v2, x:I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v3, v0

    .line 800
    .local v3, y:I
    const/4 v4, 0x0

    .line 801
    .local v4, x2:I
    const/4 v5, 0x0

    .line 802
    .local v5, y2:I
    if-le v8, v9, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 803
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListView;->MultiTouchMovement(Landroid/view/MotionEvent;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 804
    goto :goto_0

    .line 807
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v4           #x2:I
    .end local v5           #y2:I
    :catch_0
    move-exception v6

    .line 809
    .local v6, ArrayIndexOutOfBoundsException:Ljava/lang/Exception;
    const-string v0, "MessageListView"

    const-string v1, "ArrayIndexOutOfBoundsException in MultiTouchMovement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 810
    goto :goto_0

    .line 817
    .end local v6           #ArrayIndexOutOfBoundsException:Ljava/lang/Exception;
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mMultiTouchMode:Z

    if-eqz v0, :cond_0

    .line 818
    iput v11, p0, Lcom/android/mms/ui/MessageListView;->mFingerBeginDistance:I

    .line 819
    iput v11, p0, Lcom/android/mms/ui/MessageListView;->mFingerEndDistance:I

    .line 820
    iput-boolean v11, p0, Lcom/android/mms/ui/MessageListView;->mMultiTouchMode:Z

    .line 821
    iput-boolean v11, p0, Lcom/android/mms/ui/MessageListView;->bZoom:Z

    .line 822
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v7

    .line 823
    .local v7, instance:Lcom/android/mms/util/TextSizeManager;
    if-eqz v7, :cond_1

    .line 824
    invoke-virtual {v7}, Lcom/android/mms/util/TextSizeManager;->getPinchLevel()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/mms/util/TextSizeManager;->setPinchLevel(I)V

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->resetPanelView()V

    move v0, v9

    .line 829
    goto :goto_0

    .line 787
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x105 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetPanelView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 144
    const-string v1, "MessageListView"

    const-string v2, "resetPanelView: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v1, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    if-eq v1, v3, :cond_0

    .line 149
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mMinFootHeight:I

    .line 151
    :cond_0
    iget v1, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    if-eq v1, v3, :cond_1

    .line 152
    iput v3, p0, Lcom/android/mms/ui/MessageListView;->mMmsMinFootHeight:I

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_2

    .line 155
    const-string v1, "MessageListView"

    const-string v2, "requestLayout: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 157
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListView;->setFootAdjusted(Z)V

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListView;->setAdjustFooter(Z)V

    .line 165
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->bReset:Z

    .line 169
    :cond_3
    return-void
.end method

.method public setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 119
    return-void
.end method

.method protected setNewMessage(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mbNewMessave:Z

    if-nez v0, :cond_0

    .line 660
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListView;->mbNewMessave:Z

    .line 661
    :cond_0
    return-void
.end method

.method protected setOnConfigurationChange(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListView;->mKeepTranscriptMode:Z

    .line 486
    return-void
.end method

.method public setPanelView(Landroid/view/View;)V
    .locals 3
    .parameter "panel"

    .prologue
    const/4 v2, 0x0

    .line 124
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mEditorText:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    const v1, 0x7f0e0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    .line 129
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    const v1, 0x7f0e0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mAttachmentView:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mMmsEditView:Landroid/view/View;

    .line 135
    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mSpaceView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setWrappingHeader(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mPanelView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageListView;->addFootViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 141
    return-void
.end method

.method public setTextSizeChangeListener(Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mTextSizeChangeListener:Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;

    .line 930
    return-void
.end method
