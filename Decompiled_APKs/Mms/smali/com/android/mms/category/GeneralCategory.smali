.class public Lcom/android/mms/category/GeneralCategory;
.super Lcom/android/mms/category/Category;
.source "GeneralCategory.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/mms/category/Category;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/category/Category;->mCategoryId:I

    .line 28
    return-void
.end method


# virtual methods
.method public containsMultipleFolders()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/category/Category;->mTitle:Ljava/lang/String;

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/mms/category/Category;->mTitle:Ljava/lang/String;

    return-object v0

    .line 44
    :cond_0
    const v0, 0x7f09010c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/category/Category;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/category/Category;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public requirePassword()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "[General]"

    return-object v0
.end method
