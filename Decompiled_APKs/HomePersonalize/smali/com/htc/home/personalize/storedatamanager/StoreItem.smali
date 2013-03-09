.class public Lcom/htc/home/personalize/storedatamanager/StoreItem;
.super Ljava/lang/Object;
.source "StoreItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/storedatamanager/StoreItem$StoreItemColumn;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "store_item"


# instance fields
.field public appId:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public appSource:Ljava/lang/String;

.field public appType:Ljava/lang/String;

.field public cateID:Ljava/lang/String;

.field public contentCategory:Ljava/lang/String;

.field public contentSize:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public displayOrder:I

.field public iconURL:Ljava/lang/String;

.field public navigateTo:Ljava/lang/String;

.field public previewImageLandscape:Ljava/lang/String;

.field public previewImagePortrait:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public productID:Ljava/lang/String;

.field public publishedDate:Ljava/lang/String;

.field public versionCode:Ljava/lang/String;

.field public viewType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 162
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "productID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iconURL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contentCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "navigateTo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "displayOrder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "appType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "appId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "appPackageName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "appSource"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "versionCode"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "publishedDate"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "price"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contentSize"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "previewImageLandscape"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "previewImagePortrait"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "viewType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cateID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public static getCreateTableSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, sqlCreate:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "store_item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "productID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "iconURL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "contentCategory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "navigateTo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "displayOrder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "appType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "appPackageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "appSource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "versionCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "publishedDate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "price"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "contentSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "previewImageLandscape"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "previewImagePortrait"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "viewType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "cateID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "strProId"
    .parameter "strIconURL"
    .parameter "strContentCategory"
    .parameter "strDispalyName"
    .parameter "strNavigateTO"
    .parameter "iDisplayOrder"
    .parameter "strAppType"
    .parameter "strAppId"
    .parameter "strAppPackageName"
    .parameter "strAppSource"
    .parameter "strVersionCode"
    .parameter "strPublishedDate"
    .parameter "strPrice"
    .parameter "strContentSize"
    .parameter "strPreviewImageLandscape"
    .parameter "strPreviewImagePortrait"
    .parameter "strViewType"
    .parameter "strCateID"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->iconURL:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->contentCategory:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->navigateTo:Ljava/lang/String;

    .line 36
    iput p6, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayOrder:I

    .line 37
    iput-object p7, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appType:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appId:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appPackageName:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appSource:Ljava/lang/String;

    .line 41
    iput-object p11, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    .line 42
    iput-object p12, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->publishedDate:Ljava/lang/String;

    .line 43
    iput-object p13, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->price:Ljava/lang/String;

    .line 44
    iput-object p14, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->contentSize:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->previewImageLandscape:Ljava/lang/String;

    .line 46
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->previewImagePortrait:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->viewType:Ljava/lang/String;

    .line 48
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->cateID:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "productID"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "iconURL"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->iconURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "contentCategory"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->contentCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "navigateTo"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->navigateTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "displayOrder"

    iget v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "appType"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "appId"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "appPackageName"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "appSource"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "versionCode"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "publishedDate"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->publishedDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "price"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->price:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "contentSize"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->contentSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "previewImageLandscape"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->previewImageLandscape:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "previewImagePortrait"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->previewImagePortrait:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "viewType"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->viewType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "cateID"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->cateID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "productID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ", iconURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->iconURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", contentCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->contentCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", displayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", navigateTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->navigateTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", displayOrder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", appType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", appId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", appPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", appSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", versionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", publishedDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->publishedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", price: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", contentSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->contentSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", previewImageLandscape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->previewImageLandscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", previewImagePortrait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->previewImagePortrait:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", viewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->viewType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", cateID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->cateID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
