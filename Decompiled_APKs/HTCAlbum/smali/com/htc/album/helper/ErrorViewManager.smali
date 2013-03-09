.class public Lcom/htc/album/helper/ErrorViewManager;
.super Landroid/widget/RelativeLayout;
.source "ErrorViewManager.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenControlHook;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mErrorImage:Landroid/widget/ImageView;

.field private mErrorText:Landroid/widget/TextView;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ErrorViewManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 24
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/LinearLayout;

    .line 25
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorImage:Landroid/widget/ImageView;

    .line 26
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 24
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/LinearLayout;

    .line 25
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorImage:Landroid/widget/ImageView;

    .line 26
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 24
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/LinearLayout;

    .line 25
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorImage:Landroid/widget/ImageView;

    .line 26
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 42
    return-void
.end method


# virtual methods
.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewGroup"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {p0}, Lcom/htc/album/helper/ErrorViewManager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ErrorViewManager;->setVisibility(I)V

    .line 89
    return-void
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 45
    const-class v1, Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/helper/ErrorViewManager;->setId(I)V

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/LinearLayout;

    .line 49
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorImage:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 54
    sget-object v1, Lcom/htc/album/helper/ErrorViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ErrorViewManager][initialize]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/htc/album/helper/ErrorViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ErrorViewManager][initialize]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 61
    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/LinearLayout;

    .line 62
    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorImage:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method public setErrorImage(I)V
    .locals 3
    .parameter "nResID"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    sget-object v0, Lcom/htc/album/helper/ErrorViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ErrorViewManager][setErrorImage]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setErrorText(I)V
    .locals 1
    .parameter "nResID"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ErrorViewManager;->setVisibility(I)V

    .line 85
    return-void
.end method
