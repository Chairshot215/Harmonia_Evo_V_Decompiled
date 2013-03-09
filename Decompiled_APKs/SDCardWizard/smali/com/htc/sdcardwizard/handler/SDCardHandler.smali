.class public abstract Lcom/htc/sdcardwizard/handler/SDCardHandler;
.super Ljava/lang/Object;
.source "SDCardHandler.java"


# static fields
.field private static final KEY_CATEGORY_ID:Ljava/lang/String; = "category_id"

.field private static mStorage:Lcom/htc/sdcardwizard/CategoryItem$Storage;


# instance fields
.field private final iconGetter:Lcom/htc/sdcardwizard/handler/IconGetter;

.field protected final owner:Landroid/app/Activity;

.field protected path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V
    .locals 1
    .parameter "owner"
    .parameter "iconGetter"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->iconGetter:Lcom/htc/sdcardwizard/handler/IconGetter;

    .line 45
    invoke-static {}, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static extractCategoryID(Landroid/content/Intent;)Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 3
    .parameter "intent"

    .prologue
    .line 17
    const-string v1, "category_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 18
    .local v0, id:Lcom/htc/sdcardwizard/handler/CategoryID;
    if-nez v0, :cond_0

    .line 19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null category ID."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_0
    return-object v0
.end method

.method public static putCategoryID(Landroid/content/Intent;Lcom/htc/sdcardwizard/handler/CategoryID;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 13
    const-string v0, "category_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 14
    return-void
.end method


# virtual methods
.method public final getCategoryIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->iconGetter:Lcom/htc/sdcardwizard/handler/IconGetter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->iconGetter:Lcom/htc/sdcardwizard/handler/IconGetter;

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/htc/sdcardwizard/handler/IconGetter;->get(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
.end method

.method public final getStorageType()Lcom/htc/sdcardwizard/CategoryItem$Storage;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->mStorage:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public final setStorageType(Lcom/htc/sdcardwizard/CategoryItem$Storage;)V
    .locals 0
    .parameter "storage"

    .prologue
    .line 33
    sput-object p1, Lcom/htc/sdcardwizard/handler/SDCardHandler;->mStorage:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    .line 34
    return-void
.end method

.method public abstract showDeleteScreen(I)V
.end method
