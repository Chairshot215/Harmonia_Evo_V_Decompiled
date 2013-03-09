.class Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "addOrMoveItemInDatabaseRunner"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItem:Lcom/htc/launcher/ItemInfo;

.field private final m_lContainer:J

.field private final m_nCellX:I

.field private final m_nCellY:I

.field private final m_nScreen:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V
    .locals 0
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1857
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1858
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->mContext:Landroid/content/Context;

    .line 1859
    iput-object p2, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->mItem:Lcom/htc/launcher/ItemInfo;

    .line 1860
    iput-wide p3, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_lContainer:J

    .line 1861
    iput p5, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_nScreen:I

    .line 1862
    iput p6, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_nCellX:I

    .line 1863
    iput p7, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_nCellY:I

    .line 1864
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->mItem:Lcom/htc/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->mItem:Lcom/htc/launcher/ItemInfo;

    iget-wide v2, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_lContainer:J

    iget v4, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_nScreen:I

    iget v5, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_nCellX:I

    iget v6, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_nCellY:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 1875
    :goto_0
    return-void

    .line 1873
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->mItem:Lcom/htc/launcher/ItemInfo;

    iget-wide v2, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_lContainer:J

    iget v4, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_nScreen:I

    iget v5, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_nCellX:I

    iget v6, p0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->m_nCellY:I

    invoke-static/range {v0 .. v6}, Lcom/htc/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V

    goto :goto_0
.end method
