.class public final Lcom/htc/sdcardwizard/CategoryItem;
.super Ljava/lang/Object;
.source "CategoryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/CategoryItem$Storage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final categoryID:Lcom/htc/sdcardwizard/handler/CategoryID;

.field private count:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final ps:Lcom/htc/sdcardwizard/utils/PluralSingular;

.field private size:J

.field public final storage:Lcom/htc/sdcardwizard/CategoryItem$Storage;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LSCW/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/htc/sdcardwizard/CategoryItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/CategoryItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "titleId"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V
    .locals 6
    .parameter "context"
    .parameter "titleId"
    .parameter "categoryID"
    .parameter "ps"

    .prologue
    .line 29
    sget-object v5, Lcom/htc/sdcardwizard/CategoryItem$Storage;->CARD_STORAGE:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;Lcom/htc/sdcardwizard/CategoryItem$Storage;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;Lcom/htc/sdcardwizard/CategoryItem$Storage;)V
    .locals 2
    .parameter "context"
    .parameter "titleId"
    .parameter "categoryID"
    .parameter "ps"
    .parameter "storage"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sdcardwizard/CategoryItem;->count:I

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sdcardwizard/CategoryItem;->size:J

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/CategoryItem;->title:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/htc/sdcardwizard/CategoryItem;->categoryID:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 35
    iput-object p4, p0, Lcom/htc/sdcardwizard/CategoryItem;->ps:Lcom/htc/sdcardwizard/utils/PluralSingular;

    .line 36
    iput-object p5, p0, Lcom/htc/sdcardwizard/CategoryItem;->storage:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/sdcardwizard/CategoryItem;->count:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/htc/sdcardwizard/CategoryItem;->size:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/sdcardwizard/CategoryItem;->count:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstalled(Landroid/app/Activity;)Z
    .locals 1
    .parameter "owner"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItem;->categoryID:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-static {p1, v0}, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;->getHandler(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/SDCardHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/handler/SDCardHandler;->isInstalled()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/app/Activity;)V
    .locals 5
    .parameter "owner"

    .prologue
    .line 40
    iget-object v2, p0, Lcom/htc/sdcardwizard/CategoryItem;->categoryID:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-static {p1, v2}, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;->getHandler(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/SDCardHandler;

    move-result-object v1

    .line 41
    .local v1, provider:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    invoke-virtual {v1}, Lcom/htc/sdcardwizard/handler/SDCardHandler;->getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;

    move-result-object v0

    .line 43
    .local v0, info:Lcom/htc/sdcardwizard/handler/CategoryInfo;
    iget v2, v0, Lcom/htc/sdcardwizard/handler/CategoryInfo;->count:I

    iput v2, p0, Lcom/htc/sdcardwizard/CategoryItem;->count:I

    .line 44
    iget-wide v2, v0, Lcom/htc/sdcardwizard/handler/CategoryInfo;->size:J

    iput-wide v2, p0, Lcom/htc/sdcardwizard/CategoryItem;->size:J

    .line 46
    iget-object v2, p0, Lcom/htc/sdcardwizard/CategoryItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/htc/sdcardwizard/handler/SDCardHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sdcardwizard/CategoryItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 49
    :cond_0
    sget-object v2, Lcom/htc/sdcardwizard/CategoryItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sdcardwizard/CategoryItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
