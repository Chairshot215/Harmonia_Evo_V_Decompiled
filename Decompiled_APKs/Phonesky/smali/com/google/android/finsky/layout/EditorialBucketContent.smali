.class public abstract Lcom/google/android/finsky/layout/EditorialBucketContent;
.super Landroid/widget/RelativeLayout;
.source "EditorialBucketContent.java"

# interfaces
.implements Lcom/google/android/finsky/installer/InstallerListener;


# instance fields
.field protected mBuyButton:Landroid/widget/TextView;

.field protected mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

.field protected mDescription:Landroid/widget/TextView;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private updatePurchaseButton(Ljava/lang/String;)V
    .locals 5
    .parameter "referrer"

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->hasContainerAnnotation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 150
    .local v0, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-static {v1, v4, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V

    .line 151
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v1, v2, v0, v3, p1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->setPurchaseOrOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/widget/TextView;Landroid/accounts/Account;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    .end local v0           #account:Landroid/accounts/Account;
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 65
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 66
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 72
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 73
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 54
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DocImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    .line 55
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 57
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDescription:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 1
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->updatePurchaseButton(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .locals 6
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "document"
    .parameter "referrer"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 84
    iput-object p3, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 85
    iput-object p2, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 87
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/DocImageView;->setVisibility(I)V

    .line 93
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setTitle(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v2, -0x1

    invoke-static {p3, p1, v1, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 98
    invoke-direct {p0, p4}, Lcom/google/android/finsky/layout/EditorialBucketContent;->updatePurchaseButton(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, p3, p1, v2}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V

    .line 104
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentLongDescriptionResource(I)I

    move-result v0

    .line 106
    .local v0, descriptionStringId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    return-void

    .line 101
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setMockDocument(I)V
    .locals 4
    .parameter "backend"

    .prologue
    const/16 v3, 0x8

    .line 111
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0700f9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DocImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DocImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 119
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 121
    const/4 v0, 0x0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DocImageView;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DocImageView;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public setNoDocument()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DocImageView;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    return-void
.end method
