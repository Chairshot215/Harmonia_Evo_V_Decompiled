.class public Lcom/htc/widget/AboutDialog;
.super Landroid/app/Dialog;
.source "AboutDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/AboutDialog$AboutParams;,
        Lcom/htc/widget/AboutDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AboutDialog"


# instance fields
.field private mApp:Landroid/widget/TextView;

.field private mBodyBlock:Landroid/widget/ScrollView;

.field private mCopyRight:Landroid/widget/TextView;

.field private mCorp:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mDev:Landroid/widget/TextView;

.field private mHeadBlock:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/widget/ImageView;

.field private mParams:Lcom/htc/widget/AboutDialog$AboutParams;

.field private mReserved:Landroid/widget/TextView;

.field private mVer:Landroid/widget/TextView;

.field private mWindow:Landroid/view/Window;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/htc/widget/AboutDialog$AboutParams;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    invoke-virtual {p0}, Lcom/htc/widget/AboutDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Lcom/htc/widget/AboutDialog$AboutParams;->getHtcContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20806aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private installContent()V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/htc/widget/AboutDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x2090027

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/htc/widget/AboutDialog;->setupView()V

    return-void
.end method

.method private setupView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202009b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mHeadBlock:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202009f

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mBodyBlock:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202009c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mApp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202009d

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mDev:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202009e

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mVer:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x20200a2

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mCopyRight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x20200a3

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mCorp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x20200a4

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mReserved:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x20200a0

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x20200a1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mLogo:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mApp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mDev:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppDev:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mVer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mCopyRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppCopyRight:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mCorp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppCorp:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mReserved:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppReserved:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->appContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppCompanyImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mBodyBlock:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mHeadBlock:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    invoke-virtual {v1}, Lcom/htc/widget/AboutDialog$AboutParams;->getHtcContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->scrollBy(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mBodyBlock:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    #calls: Lcom/htc/widget/AboutDialog$AboutParams;->loadDefaultParams()V
    invoke-static {v0}, Lcom/htc/widget/AboutDialog$AboutParams;->access$000(Lcom/htc/widget/AboutDialog$AboutParams;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-direct {p0}, Lcom/htc/widget/AboutDialog;->installContent()V

    return-void
.end method

.method public updateUI()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/AboutDialog;->installContent()V

    return-void
.end method
