.class public Lcom/android/mms/category/SecureCategory;
.super Lcom/android/mms/category/Category;
.source "SecureCategory.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/mms/category/Category;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/category/Category;->mCategoryId:I

    .line 26
    return-void
.end method


# virtual methods
.method public containsMultipleFolders()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const v0, 0x7f090288

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/category/Category;->mTitle:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/android/mms/category/Category;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public requirePassword()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "[Secure]"

    return-object v0
.end method
