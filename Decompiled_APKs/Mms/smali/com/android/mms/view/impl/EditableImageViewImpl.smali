.class public Lcom/android/mms/view/impl/EditableImageViewImpl;
.super Lcom/android/mms/view/impl/EditableMediaViewImpl;
.source "EditableImageViewImpl.java"

# interfaces
.implements Lcom/android/mms/view/EditableImageView;


# instance fields
.field private mTvResolution:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/mms/view/impl/EditableMediaViewImpl;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/mms/view/impl/EditableMediaViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bindTo(Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "media"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->bindTo(Lcom/android/mms/model/MediaModel;)V

    .line 32
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->onFinishInflate()V

    .line 27
    return-void
.end method

.method public setResolution(II)V
    .locals 0
    .parameter "imgWidth"
    .parameter "imgHeight"

    .prologue
    .line 36
    return-void
.end method
