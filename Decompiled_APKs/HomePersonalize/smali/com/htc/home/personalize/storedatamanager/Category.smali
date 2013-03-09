.class public Lcom/htc/home/personalize/storedatamanager/Category;
.super Ljava/lang/Object;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/storedatamanager/Category$CategoryColumn;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "category"


# instance fields
.field public categoryID:Ljava/lang/String;

.field public contentCategory:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public displayOrder:I

.field public imageURL:Ljava/lang/String;

.field public navigateTo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "categoryID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "imageURL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contentCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "navigateTo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "displayOrder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/storedatamanager/Category;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getCreateTableSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, sqlCreate:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "categoryID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "imageURL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "contentCategory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "navigateTo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "displayOrder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public generateIconImagePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/Category;->categoryID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_CATE_ICON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "cateID"
    .parameter "imgURL"
    .parameter "contentCate"
    .parameter "dispName"
    .parameter "desc"
    .parameter "naviTo"
    .parameter "dispOrder"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/home/personalize/storedatamanager/Category;->categoryID:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/htc/home/personalize/storedatamanager/Category;->imageURL:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/htc/home/personalize/storedatamanager/Category;->contentCategory:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/htc/home/personalize/storedatamanager/Category;->displayName:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/htc/home/personalize/storedatamanager/Category;->description:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/htc/home/personalize/storedatamanager/Category;->navigateTo:Ljava/lang/String;

    .line 29
    iput p7, p0, Lcom/htc/home/personalize/storedatamanager/Category;->displayOrder:I

    .line 30
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 34
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "categoryID"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/Category;->categoryID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "imageURL"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/Category;->imageURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "contentCategory"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/Category;->contentCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/Category;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "description"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/Category;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "navigateTo"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/Category;->navigateTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "displayOrder"

    iget v2, p0, Lcom/htc/home/personalize/storedatamanager/Category;->displayOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    return-object v0
.end method
