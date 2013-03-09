.class public Lcom/htc/home/personalize/onlineresource/OnlineResource;
.super Lcom/htc/home/personalize/abstractresource/Resource;
.source "OnlineResource.java"

# interfaces
.implements Lcom/htc/home/personalize/abstractresource/PrepareThread$Preparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/onlineresource/OnlineResource$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appCtx:Landroid/content/Context;

.field private isIconPReady:Z

.field private isPrepareDownload:Z

.field private isThumbLReady:Z

.field private isThumbPReady:Z

.field private final parent:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

.field private final previewBase:Ljava/lang/String;

.field private retryDownloadCountIconP:I

.field private retryDownloadCountThumbL:I

.field private retryDownloadCountThumbP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/home/personalize/onlineresource/OnlineResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)V
    .locals 2
    .parameter "productID"
    .parameter "iconURL"
    .parameter "strCateID"
    .parameter "displayName"
    .parameter "navigateTo"
    .parameter "displayOrder"
    .parameter "appType"
    .parameter "appId"
    .parameter "appPackageName"
    .parameter "appSource"
    .parameter "versionCode"
    .parameter "publishedDate"
    .parameter "price"
    .parameter "contentSize"
    .parameter "previewImageLandscape"
    .parameter "previewImagePortrait"
    .parameter "viewType"
    .parameter "context"
    .parameter "previewBase"
    .parameter "parent"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p17}, Lcom/htc/home/personalize/abstractresource/Resource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isPrepareDownload:Z

    .line 51
    invoke-virtual/range {p18 .. p18}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->appCtx:Landroid/content/Context;

    .line 52
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->previewBase:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->updateReadiness()V

    .line 54
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->parent:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountIconP:I

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountThumbP:I

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountThumbL:I

    .line 59
    return-void
.end method

.method static import_(Landroid/database/Cursor;Lcom/htc/home/personalize/onlineresource/OnlineResourceList;Landroid/content/Context;)Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .locals 29
    .parameter "cursor"
    .parameter "parent"
    .parameter "context"

    .prologue
    .line 62
    const-string v23, "productID"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, productID:Ljava/lang/String;
    if-nez p1, :cond_0

    const/16 v26, 0x0

    .line 64
    .local v26, tmp:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :goto_0
    if-eqz v26, :cond_1

    .line 105
    .end local v26           #tmp:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :goto_1
    return-object v26

    .line 63
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v26

    goto :goto_0

    .line 68
    .restart local v26       #tmp:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_1
    const-string v23, "iconURL"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, iconURL:Ljava/lang/String;
    const-string v23, "cateID"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, categoryID:Ljava/lang/String;
    const-string v23, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, displayName:Ljava/lang/String;
    const-string v23, "navigateTo"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, navigateTo:Ljava/lang/String;
    const-string v23, "displayOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 73
    .local v11, displayOrder:I
    const-string v23, "appType"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 74
    .local v12, appType:Ljava/lang/String;
    const-string v23, "appId"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 75
    .local v13, appId:Ljava/lang/String;
    const-string v23, "appPackageName"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, appPackageName:Ljava/lang/String;
    const-string v23, "appSource"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 77
    .local v15, appSource:Ljava/lang/String;
    const-string v23, "versionCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 78
    .local v16, versionCode:Ljava/lang/String;
    const-string v23, "publishedDate"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 79
    .local v17, publishedDate:Ljava/lang/String;
    const-string v23, "price"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 80
    .local v18, price:Ljava/lang/String;
    const-string v23, "contentSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 81
    .local v19, contentSize:Ljava/lang/String;
    const-string v23, "previewImageLandscape"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 82
    .local v20, previewImageLandscape:Ljava/lang/String;
    const-string v23, "previewImagePortrait"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 83
    .local v21, previewImagePortrait:Ljava/lang/String;
    const-string v23, "viewType"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 84
    .local v27, viewTypeStr:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/htc/home/personalize/storedatamanager/StoreDataConsts;->toIntType(Ljava/lang/String;)I

    move-result v22

    .line 86
    .local v22, viewType:I
    const/4 v5, 0x0

    .line 87
    .local v5, or:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    new-instance v5, Lcom/htc/home/personalize/onlineresource/OnlineResource;

    .end local v5           #or:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v23, p2

    move-object/from16 v25, p1

    invoke-direct/range {v5 .. v25}, Lcom/htc/home/personalize/onlineresource/OnlineResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)V

    .line 93
    .restart local v5       #or:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 94
    if-eqz p1, :cond_2

    .line 95
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->add(Lcom/htc/home/personalize/onlineresource/OnlineResource;)V

    :cond_2
    move-object/from16 v26, v5

    .line 97
    goto/16 :goto_1

    .line 100
    :cond_3
    sget-object v24, Lcom/htc/home/personalize/onlineresource/OnlineResource;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "import_: failed to import online resource or="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " status="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-nez v5, :cond_5

    const/16 v23, 0x0

    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz p1, :cond_4

    .line 102
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xb

    const/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V

    .line 105
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 100
    :cond_5
    invoke-virtual {v5}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v23

    goto :goto_2
.end method

.method private updateReadiness()V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 214
    iget-boolean v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isIconPReady:Z

    .line 215
    .local v0, oldReadiness:Z
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getIconURL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getIconURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 216
    :cond_0
    iput-boolean v7, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isIconPReady:Z

    .line 221
    :goto_0
    iget-boolean v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isIconPReady:Z

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->parent:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v2, :cond_1

    .line 222
    iget-object v5, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->parent:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-boolean v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isIconPReady:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, p0, v6, v8, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbPReady:Z

    .line 229
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewImagePortrait()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewImagePortrait()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 230
    :cond_2
    iput-boolean v7, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbPReady:Z

    .line 235
    :goto_2
    iget-boolean v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbPReady:Z

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->parent:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v2, :cond_3

    .line 236
    iget-object v5, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->parent:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-boolean v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbPReady:Z

    if-eqz v2, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {v5, p0, v6, v8, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V

    .line 242
    :cond_3
    iget-boolean v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbLReady:Z

    .line 243
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewImageLandscape()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewImageLandscape()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 244
    :cond_4
    iput-boolean v7, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbLReady:Z

    .line 249
    :goto_4
    iget-boolean v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbLReady:Z

    if-eq v0, v2, :cond_5

    iget-object v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->parent:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v2, :cond_5

    .line 250
    iget-object v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->parent:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-boolean v6, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbLReady:Z

    if-eqz v6, :cond_b

    :goto_5
    invoke-virtual {v2, p0, v5, v8, v3}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->fireDataChanged(Lcom/htc/home/personalize/onlineresource/OnlineResource;Lcom/htc/home/personalize/abstractresource/Resource$Const;II)V

    .line 255
    :cond_5
    return-void

    .line 218
    :cond_6
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, tmp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isIconPReady:Z

    goto :goto_0

    .end local v1           #tmp:Ljava/io/File;
    :cond_7
    move v2, v4

    .line 222
    goto :goto_1

    .line 232
    :cond_8
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v1       #tmp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbPReady:Z

    goto :goto_2

    .end local v1           #tmp:Ljava/io/File;
    :cond_9
    move v2, v4

    .line 236
    goto :goto_3

    .line 246
    :cond_a
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .restart local v1       #tmp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbLReady:Z

    goto :goto_4

    .end local v1           #tmp:Ljava/io/File;
    :cond_b
    move v3, v4

    .line 250
    goto :goto_5
.end method


# virtual methods
.method public accumulateRetryDownloadCount(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V
    .locals 2
    .parameter "aspect"

    .prologue
    .line 179
    sget-object v0, Lcom/htc/home/personalize/onlineresource/OnlineResource$1;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    invoke-virtual {p1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountThumbL:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountThumbL:I

    .line 183
    :pswitch_1
    iget v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountThumbP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountThumbP:I

    .line 185
    :pswitch_2
    iget v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountIconP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountIconP:I

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public download()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->appCtx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getViewType()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getResourcePath(Landroid/content/Context;ILcom/htc/home/personalize/abstractresource/Resource;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->appCtx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getViewType()I

    move-result v2

    iget-object v3, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->appCtx:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/htc/home/personalize/localresource/LocalResource;->download(Ljava/lang/String;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource;Lcom/htc/home/personalize/localresource/LocalResourceList;)Lcom/htc/home/personalize/localresource/LocalResource;

    .line 117
    return-void
.end method

.method public getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;
    .locals 2
    .parameter "aspect"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->previewBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetryDownloadCount(Lcom/htc/home/personalize/abstractresource/Resource$Const;)I
    .locals 2
    .parameter "aspect"

    .prologue
    .line 190
    sget-object v0, Lcom/htc/home/personalize/onlineresource/OnlineResource$1;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    invoke-virtual {p1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 192
    :pswitch_0
    iget v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountThumbL:I

    goto :goto_0

    .line 194
    :pswitch_1
    iget v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountThumbP:I

    goto :goto_0

    .line 196
    :pswitch_2
    iget v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->retryDownloadCountIconP:I

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .locals 4

    .prologue
    .line 131
    iget-boolean v2, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isPrepareDownload:Z

    if-eqz v2, :cond_0

    .line 132
    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 138
    :goto_0
    return-object v2

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getViewType()I

    move-result v2

    iget-object v3, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->appCtx:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v0

    .line 134
    .local v0, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 135
    .local v1, res:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_1
    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {v1}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v2

    goto :goto_0

    .line 134
    .end local v1           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v1

    goto :goto_1

    .line 138
    .restart local v1       #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_2
    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_0
.end method

.method public isReady(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Z
    .locals 2
    .parameter "aspect"

    .prologue
    .line 202
    sget-object v0, Lcom/htc/home/personalize/onlineresource/OnlineResource$1;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    invoke-virtual {p1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 210
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 204
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbLReady:Z

    goto :goto_0

    .line 206
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isThumbPReady:Z

    goto :goto_0

    .line 208
    :pswitch_2
    iget-boolean v0, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isIconPReady:Z

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized prepare(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V
    .locals 6
    .parameter "aspect"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isReady(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    const/4 v2, 0x0

    .line 153
    .local v2, url:Ljava/lang/String;
    :try_start_1
    sget-object v3, Lcom/htc/home/personalize/onlineresource/OnlineResource$1;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    invoke-virtual {p1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v3, :pswitch_data_0

    .line 166
    :goto_1
    :try_start_2
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, targetUri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->appCtx:Landroid/content/Context;

    invoke-static {v1, v3, v4, v5}, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->download(Ljava/net/URI;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->updateReadiness()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 173
    .end local v1           #targetUri:Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/net/URISyntaxException;
    :try_start_3
    sget-object v3, Lcom/htc/home/personalize/onlineresource/OnlineResource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare: URISyntaxException. url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 148
    .end local v0           #e:Ljava/net/URISyntaxException;
    .end local v2           #url:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 155
    .restart local v2       #url:Ljava/lang/String;
    :pswitch_0
    :try_start_4
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getIconURL()Ljava/lang/String;

    move-result-object v2

    .line 156
    goto :goto_1

    .line 158
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewImagePortrait()Ljava/lang/String;

    move-result-object v2

    .line 159
    goto :goto_1

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewImageLandscape()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 171
    .restart local v1       #targetUri:Ljava/net/URI;
    :cond_1
    :try_start_5
    sget-object v3, Lcom/htc/home/personalize/onlineresource/OnlineResource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incorrect url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeOrCancel()V
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getViewType()I

    move-result v2

    iget-object v3, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->appCtx:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v0

    .line 121
    .local v0, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 122
    .local v1, res:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_0
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Lcom/htc/home/personalize/localresource/LocalResource;->removeOrCancel()V

    .line 128
    :cond_0
    return-void

    .line 121
    .end local v1           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v1

    goto :goto_0
.end method

.method public setPrepareDownload(Z)V
    .locals 0
    .parameter "bPrepare"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isPrepareDownload:Z

    .line 143
    return-void
.end method
