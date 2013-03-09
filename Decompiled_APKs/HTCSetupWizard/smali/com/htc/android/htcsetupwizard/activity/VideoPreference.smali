.class public Lcom/htc/android/htcsetupwizard/activity/VideoPreference;
.super Lcom/htc/preference/HtcPreference;
.source "VideoPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_VideoPreference"


# instance fields
.field private mIcon1:I

.field private mIconBitmap1:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->mIconBitmap1:Landroid/graphics/Bitmap;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->mIcon1:I

    .line 42
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->setLayoutResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 101
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 58
    const-string v1, "OOBE_VideoPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindView(), title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", summary = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const v1, 0x101000c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, thumbnail:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 65
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->mIcon1:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 67
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->mIcon1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->mIconBitmap1:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->mIconBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public setThumbnail(I)V
    .locals 0
    .parameter "icon1"

    .prologue
    .line 96
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->mIcon1:I

    .line 97
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->mIconBitmap1:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method
