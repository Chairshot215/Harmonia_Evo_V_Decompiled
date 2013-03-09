.class public abstract Lcom/android/mms/category/Category;
.super Ljava/lang/Object;
.source "Category.java"


# static fields
.field public static final ALL:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/category/Category;",
            ">;"
        }
    .end annotation
.end field

.field public static final BLOCKED:Lcom/android/mms/category/Category; = null

.field public static final BLOCKED_ID:I = 0x2

.field public static final COLUMN_NAME:Ljava/lang/String; = "htc_category"

.field public static final GENERAL:Lcom/android/mms/category/Category; = null

.field public static final GENERAL_ID:I = 0x0

.field public static final GROUP_ID:I = 0x3

.field public static final SECURE:Lcom/android/mms/category/Category; = null

.field public static final SECURE_ID:I = 0x1


# instance fields
.field protected mCategoryId:I

.field protected mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/mms/category/GeneralCategory;

    invoke-direct {v0}, Lcom/android/mms/category/GeneralCategory;-><init>()V

    sput-object v0, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    .line 50
    new-instance v0, Lcom/android/mms/category/SecureCategory;

    invoke-direct {v0}, Lcom/android/mms/category/SecureCategory;-><init>()V

    sput-object v0, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    .line 51
    new-instance v0, Lcom/android/mms/category/BlockedCategory;

    invoke-direct {v0}, Lcom/android/mms/category/BlockedCategory;-><init>()V

    sput-object v0, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/mms/category/Category;->ALL:Ljava/util/List;

    .line 54
    sget-object v0, Lcom/android/mms/category/Category;->ALL:Ljava/util/List;

    sget-object v1, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/mms/category/Category;->ALL:Ljava/util/List;

    sget-object v1, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/mms/category/Category;->ALL:Ljava/util/List;

    sget-object v1, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategory(I)Lcom/android/mms/category/Category;
    .locals 1
    .parameter "categoryId"

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 66
    sget-object v0, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    sget-object v0, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    goto :goto_0

    .line 64
    :pswitch_1
    sget-object v0, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static moveTo(Landroid/content/Context;Landroid/content/AsyncQueryHandler;Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/category/Category;)V
    .locals 8
    .parameter "context"
    .parameter "handler"
    .parameter "uri"
    .parameter "selection"
    .parameter "target"

    .prologue
    .line 72
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 73
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "htc_category"

    invoke-virtual {p4}, Lcom/android/mms/category/Category;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v5, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v7

    .line 79
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "Category"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static moveTo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/category/Category;)V
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "selection"
    .parameter "target"

    .prologue
    .line 88
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 89
    .local v3, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-virtual {v0}, Lcom/android/mms/category/Category;->value()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/mms/category/Category;->value()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 90
    const-string v0, "htc_category"

    invoke-virtual {p3}, Lcom/android/mms/category/Category;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-static {p0}, Lcom/android/mms/category/Category;->updateNotificationStatus(Landroid/content/Context;)V

    .line 105
    :cond_1
    return-void

    .line 95
    :catch_0
    move-exception v6

    .line 96
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "Category"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateNotificationStatus(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 119
    return-void
.end method


# virtual methods
.method public abstract containsMultipleFolders()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 131
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/mms/category/Category;

    if-nez v1, :cond_1

    .line 135
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/mms/category/Category;->mCategoryId:I

    check-cast p1, Lcom/android/mms/category/Category;

    .end local p1
    iget v2, p1, Lcom/android/mms/category/Category;->mCategoryId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInheritedCategory()Lcom/android/mms/category/Category;
    .locals 0

    .prologue
    .line 126
    return-object p0
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract requirePassword()Z
.end method

.method public value()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/mms/category/Category;->mCategoryId:I

    return v0
.end method
