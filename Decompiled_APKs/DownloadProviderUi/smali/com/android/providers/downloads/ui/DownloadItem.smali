.class public Lcom/android/providers/downloads/ui/DownloadItem;
.super Landroid/widget/RelativeLayout;
.source "DownloadItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static CHECKMARK_AREA:F


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDownloadId:J

.field private mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

.field private mFileName:Ljava/lang/String;

.field private mIsInDownEvent:Z

.field private mMimeType:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/high16 v0, -0x4080

    sput v0, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 55
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->initialize()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 50
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->initialize()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 45
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->initialize()V

    .line 46
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 59
    sget v0, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 68
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->postInvalidate()V

    .line 114
    :goto_1
    return v0

    .line 89
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    goto :goto_0

    .line 100
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->toggle()V

    .line 102
    const/4 v0, 0x1

    .line 104
    :cond_1
    iput-boolean v3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    goto :goto_0

    .line 111
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 6
    .parameter "checked"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadId:J

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mMimeType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/ui/DownloadList;->onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mPosition:I

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 128
    return-void
.end method

.method public setData(JILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "downloadId"
    .parameter "position"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadId:J

    .line 72
    iput p3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mPosition:I

    .line 73
    iput-object p4, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mFileName:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mMimeType:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->isDownloadSelected(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadItem;->setChecked(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public setDownloadListObj(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "downloadList"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 82
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadItem;->setChecked(Z)V

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
