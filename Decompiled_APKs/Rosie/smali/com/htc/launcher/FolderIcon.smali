.class public Lcom/htc/launcher/FolderIcon;
.super Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
.source "FolderIcon.java"

# interfaces
.implements Lcom/htc/launcher/FolderInfo$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/FolderIcon$MyDropEventListener;,
        Lcom/htc/launcher/FolderIcon$MyDropTarget;,
        Lcom/htc/launcher/FolderIcon$FolderIconZone;
    }
.end annotation


# static fields
.field private static final DRAGDROP_SCOPE:Ljava/lang/String; = "empty"

.field private static final LOG_TAG:Ljava/lang/String; = "FolderIcon"

.field public static SCOPE_KEY_COUNT:J


# instance fields
.field private mCurrentIcon:Landroid/graphics/drawable/Drawable;

.field private mDropZone:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

.field private mDropZoneLand:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

.field private mIsAppDragOver:Z

.field private mLauncher:Lcom/htc/launcher/Launcher;

.field private m_bWasDropAccepted:Z

.field private m_info:Lcom/htc/launcher/FolderInfo;

.field private m_nIconHeight:I

.field private m_nIconLeftPadding:I

.field private m_nIconTopPadding:I

.field private m_nIconWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/launcher/FolderIcon;->SCOPE_KEY_COUNT:J

    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/ItemInfo;I)V
    .locals 1
    .parameter "info"
    .parameter "orientation"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;-><init>(Lcom/htc/launcher/ItemInfo;I)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/FolderIcon;->mCurrentIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    check-cast p1, Lcom/htc/launcher/FolderInfo;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/htc/launcher/FolderInfo;->addListener(Lcom/htc/launcher/FolderInfo$FolderListener;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/ItemInfo;ILcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;I)V
    .locals 1
    .parameter "info"
    .parameter "orientation"
    .parameter "listenser"
    .parameter "id"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;-><init>(Lcom/htc/launcher/ItemInfo;ILcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;I)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/FolderIcon;->mCurrentIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    check-cast p1, Lcom/htc/launcher/FolderInfo;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/htc/launcher/FolderInfo;->addListener(Lcom/htc/launcher/FolderInfo$FolderListener;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/FolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/FolderIcon;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/launcher/FolderIcon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/launcher/FolderIcon;->mIsAppDragOver:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/launcher/FolderIcon;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/launcher/FolderIcon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/launcher/FolderIcon;->m_bWasDropAccepted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/launcher/FolderIcon;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/launcher/FolderIcon;->doDropAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/launcher/FolderIcon;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/launcher/FolderIcon;->updateFolderIconInDatabase()V

    return-void
.end method

.method private changeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->mCurrentIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    iput-object p1, p0, Lcom/htc/launcher/FolderIcon;->mCurrentIcon:Landroid/graphics/drawable/Drawable;

    .line 334
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->mCurrentIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/FolderIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private createDropTarget(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
    .locals 2
    .parameter "rect"
    .parameter "action"
    .parameter "name"

    .prologue
    .line 154
    new-instance v0, Lcom/htc/launcher/FolderIcon$MyDropTarget;

    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/htc/launcher/FolderIcon$MyDropTarget;-><init>(Lcom/htc/launcher/FolderIcon;Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;Ljava/lang/String;)V

    return-object v0
.end method

.method private createFolderIconZone(Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)Lcom/htc/launcher/FolderIcon$FolderIconZone;
    .locals 6
    .parameter "scope"
    .parameter "drop"
    .parameter "target"
    .parameter "overlayColor"

    .prologue
    .line 150
    new-instance v0, Lcom/htc/launcher/FolderIcon$FolderIconZone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/FolderIcon$FolderIconZone;-><init>(Lcom/htc/launcher/FolderIcon;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V

    return-object v0
.end method

.method private doDropAction()V
    .locals 6

    .prologue
    .line 338
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v2}, Lcom/htc/launcher/DragLayer;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 339
    const-string v2, "FolderIcon"

    const-string v3, "[EDIT_DEBUG] FolderIcon.doDropAction() folder is still open, ignore drop"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    const-string v2, "FolderIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] FolderIcon.doDropAction() isDragging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->isDragging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->mDropZone:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->mDropZone:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v1

    .line 348
    .local v1, target:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
    const-string v2, "FolderIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] FolderIcon.doDropAction() Item("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->item:Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - enter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v2, v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->item:Lcom/htc/launcher/ItemInfo;

    if-nez v2, :cond_2

    .line 350
    const-string v2, "FolderIcon"

    const-string v3, "[EDIT_DEBUG] FolderIcon.doDropAction() - target.item = null, return!"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v2, v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->item:Lcom/htc/launcher/ItemInfo;

    instance-of v2, v2, Lcom/htc/launcher/ApplicationInfo;

    if-nez v2, :cond_3

    .line 355
    const-string v2, "FolderIcon"

    const-string v3, "[EDIT_DEBUG] FolderIcon.doDropAction() - target.item != ApplicationInfo, return!"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_3
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->isFolderIconDragged()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    const-string v2, "FolderIcon"

    const-string v3, "[EDIT_DEBUG] FolderIcon.doDropAction() - isFolderIconDragged, return!"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_4
    iget-object v2, v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->item:Lcom/htc/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/htc/launcher/ItemInfo;->container:J

    invoke-virtual {p0}, Lcom/htc/launcher/FolderIcon;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 371
    const-string v2, "FolderIcon"

    const-string v3, "[EDIT_DEBUG] FolderIcon.doDropAction() - removeItem()"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->item:Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/htc/launcher/DesktopItemController;->removeItem(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;)V

    .line 376
    :cond_5
    iget-object v0, v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->item:Lcom/htc/launcher/ItemInfo;

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 377
    .local v0, item:Lcom/htc/launcher/ApplicationInfo;
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v2, v0}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 378
    iget-wide v2, v0, Lcom/htc/launcher/ApplicationInfo;->container:J

    const-wide/16 v4, -0x3e5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 379
    const-string v2, "FolderIcon"

    const-string v3, "[EDIT_DEBUG] FolderIcon.doDropAction() - removeDraggedAppIconAddedIntoFolderIcon()"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/DesktopItemController;->removeDraggedAppIconAddedIntoFolderIcon()V

    .line 382
    iget-wide v2, v0, Lcom/htc/launcher/ApplicationInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 383
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v2

    iget-wide v3, v0, Lcom/htc/launcher/ApplicationInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/launcher/DesktopItemController;->removeFxShortcutItemInFxWidgetManager(J)V

    .line 387
    :cond_6
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    if-eqz v2, :cond_7

    .line 388
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/htc/launcher/ApplicationInfo;->container:J

    .line 389
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    invoke-virtual {v2, v0}, Lcom/htc/launcher/FolderInfo;->add(Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 390
    const-string v2, "FolderIcon"

    const-string v3, "[EDIT_DEBUG] FolderIcon.doDropAction() - addOrMoveItemInDatabase()"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_7
    const-string v2, "FolderIcon"

    const-string v3, "[EDIT_DEBUG] FolderIcon.doDropAction() - end"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private enableDrop(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->mDropZone:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    if-nez v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->mDropZone:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->setEnabled(Z)V

    goto :goto_0
.end method

.method static fromXml(ILcom/htc/launcher/Launcher;Landroid/view/ViewGroup;Lcom/htc/launcher/FolderInfo;ZI)Lcom/htc/launcher/Draggee;
    .locals 14
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"
    .parameter "isAddToNavbar"
    .parameter "id"

    .prologue
    .line 86
    if-eqz p4, :cond_5

    .line 87
    new-instance v3, Lcom/htc/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getOrientation()I

    move-result v10

    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v11

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {v3, v0, v10, v11, v1}, Lcom/htc/launcher/FolderIcon;-><init>(Lcom/htc/launcher/ItemInfo;ILcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;I)V

    .line 88
    .local v3, folderIcon:Lcom/htc/launcher/FolderIcon;
    invoke-virtual {v3}, Lcom/htc/launcher/FolderIcon;->setHitboxLongTabListener()V

    .line 93
    :goto_0
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 95
    .local v8, resources:Landroid/content/res/Resources;
    invoke-virtual/range {p3 .. p3}, Lcom/htc/launcher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, strTitle:Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 97
    :cond_0
    const v10, 0x7f0b0004

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 99
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v9}, Lcom/htc/launcher/FolderIcon;->setContents(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v10

    iget-object v10, v10, Lcom/htc/launcher/DesktopItemController;->mOnClickFolderListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

    invoke-virtual {v3, v10}, Lcom/htc/launcher/FolderIcon;->setOnClickListener(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V

    .line 102
    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    .line 103
    iput-object p1, v3, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 105
    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v7, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 108
    .local v6, overlayColor:I
    sget-object v10, Lcom/htc/launcher/DragSource$DragCompletedAction;->FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FolderIcon["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/htc/launcher/FolderIcon;->SCOPE_KEY_COUNT:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v7, v10, v11}, Lcom/htc/launcher/FolderIcon;->createDropTarget(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v2

    .line 111
    .local v2, dropTarget:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
    invoke-virtual {v3}, Lcom/htc/launcher/FolderIcon;->getFxDropControl()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 112
    const-string v10, "empty"

    invoke-virtual {v3}, Lcom/htc/launcher/FolderIcon;->getFxDropControl()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v11

    invoke-direct {v3, v10, v11, v2, v6}, Lcom/htc/launcher/FolderIcon;->createFolderIconZone(Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)Lcom/htc/launcher/FolderIcon$FolderIconZone;

    move-result-object v4

    .line 115
    .local v4, folderIconZone:Lcom/htc/launcher/FolderIcon$FolderIconZone;
    iput-object v4, v3, Lcom/htc/launcher/FolderIcon;->mDropZone:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    .line 116
    invoke-virtual {v3, v4}, Lcom/htc/launcher/FolderIcon;->bindDropEventListener(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 119
    .end local v4           #folderIconZone:Lcom/htc/launcher/FolderIcon$FolderIconZone;
    :cond_2
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lcom/htc/launcher/FolderIcon;->getFxDropControl(I)Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 120
    const-string v10, "empty"

    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Lcom/htc/launcher/FolderIcon;->getFxDropControl(I)Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v11

    invoke-direct {v3, v10, v11, v2, v6}, Lcom/htc/launcher/FolderIcon;->createFolderIconZone(Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)Lcom/htc/launcher/FolderIcon$FolderIconZone;

    move-result-object v5

    .line 123
    .local v5, folderIconZoneLand:Lcom/htc/launcher/FolderIcon$FolderIconZone;
    iput-object v5, v3, Lcom/htc/launcher/FolderIcon;->mDropZoneLand:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    .line 124
    invoke-virtual {v3, v5}, Lcom/htc/launcher/FolderIcon;->bindDropEventListener(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 127
    .end local v5           #folderIconZoneLand:Lcom/htc/launcher/FolderIcon$FolderIconZone;
    :cond_3
    sget-wide v10, Lcom/htc/launcher/FolderIcon;->SCOPE_KEY_COUNT:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    sput-wide v10, Lcom/htc/launcher/FolderIcon;->SCOPE_KEY_COUNT:J

    .line 129
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/htc/launcher/FolderInfo;->setDropTarget(Lcom/htc/launcher/DropTarget;)V

    .line 130
    invoke-virtual {p1, v2}, Lcom/htc/launcher/Launcher;->addDropTarget(Lcom/htc/launcher/DropTarget;)V

    .line 131
    const-string v10, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EDIT_DEBUG] addDropTarget() FolderIcon.fromXml() - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const v10, 0x7f0a0057

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v3, Lcom/htc/launcher/FolderIcon;->m_nIconWidth:I

    .line 135
    const v10, 0x7f0a0058

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v3, Lcom/htc/launcher/FolderIcon;->m_nIconHeight:I

    .line 137
    const v10, 0x7f0a0055

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v3, Lcom/htc/launcher/FolderIcon;->m_nIconLeftPadding:I

    .line 138
    const v10, 0x7f0a0056

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v3, Lcom/htc/launcher/FolderIcon;->m_nIconTopPadding:I

    .line 141
    iget-object v10, v3, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    iget-wide v10, v10, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v12, -0x3e5

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    .line 142
    invoke-virtual {v3}, Lcom/htc/launcher/FolderIcon;->updateFolderThumbnail()V

    .line 145
    :cond_4
    return-object v3

    .line 90
    .end local v2           #dropTarget:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
    .end local v3           #folderIcon:Lcom/htc/launcher/FolderIcon;
    .end local v6           #overlayColor:I
    .end local v7           #rect:Landroid/graphics/Rect;
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local v9           #strTitle:Ljava/lang/String;
    :cond_5
    new-instance v3, Lcom/htc/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getOrientation()I

    move-result v10

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v10}, Lcom/htc/launcher/FolderIcon;-><init>(Lcom/htc/launcher/ItemInfo;I)V

    .restart local v3       #folderIcon:Lcom/htc/launcher/FolderIcon;
    goto/16 :goto_0
.end method

.method private getFolderIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 501
    iget v1, p0, Lcom/htc/launcher/FolderIcon;->m_nIconLeftPadding:I

    iget v2, p0, Lcom/htc/launcher/FolderIcon;->m_nIconTopPadding:I

    iget v3, p0, Lcom/htc/launcher/FolderIcon;->m_nIconWidth:I

    iget v4, p0, Lcom/htc/launcher/FolderIcon;->m_nIconHeight:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/launcher/FolderIcon;->getBitmapImpl(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 503
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 504
    const/4 v1, 0x0

    .line 507
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateFolderIconInDatabase()V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    invoke-direct {p0}, Lcom/htc/launcher/FolderIcon;->getFolderIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/launcher/FolderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 492
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v1, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    invoke-static {v0, v1}, Lcom/htc/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 494
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    iget-wide v0, v0, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v0}, Lcom/htc/launcher/LauncherModel;->broadcastLauncherBarChanged(Landroid/content/Context;)V

    .line 497
    :cond_0
    return-void
.end method


# virtual methods
.method bindDropEventListener(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V
    .locals 3
    .parameter "dropZone"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v1, "FolderIcon"

    const-string v2, "[EDIT_DEBUG] FolderIcon.bindDropEventListener()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/htc/launcher/FolderIcon$MyDropEventListener;

    iget-object v1, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getDropBar()Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->getDropHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/htc/launcher/FolderIcon$MyDropEventListener;-><init>(Lcom/htc/launcher/FolderIcon;Landroid/os/Handler;Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 168
    .local v0, dropEventListener:Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;
    invoke-virtual {p1, v0}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->bindListener(Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;)V

    goto :goto_0
.end method

.method public getFolderInfo()Lcom/htc/launcher/FolderInfo;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    return-object v0
.end method

.method public onAdd(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 446
    return-void
.end method

.method public onDrag()V
    .locals 2

    .prologue
    .line 405
    invoke-super {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->onDrag()V

    .line 406
    const-string v0, "FolderIcon"

    const-string v1, "[EDIT_DEBUG] FolderIcon.onDrag()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/launcher/FolderIcon;->enableDrop(Z)V

    .line 408
    return-void
.end method

.method public onDrop(Lcom/htc/launcher/DropTarget;II)V
    .locals 2
    .parameter "target"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 398
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 399
    const-string v0, "FolderIcon"

    const-string v1, "[EDIT_DEBUG] FolderIcon.onDrop()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/launcher/FolderIcon;->enableDrop(Z)V

    .line 401
    return-void
.end method

.method public onDropAbort(Lcom/htc/launcher/DragSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->onDropAbort(Lcom/htc/launcher/DragSource;)V

    .line 413
    const-string v0, "FolderIcon"

    const-string v1, "[EDIT_DEBUG] FolderIcon.onDropAbort()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/launcher/FolderIcon;->enableDrop(Z)V

    .line 415
    return-void
.end method

.method public onEndDrag()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/launcher/FolderIcon;->enableDrop(Z)V

    .line 423
    return-void
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/htc/launcher/FolderIcon;->updateFolderThumbnail()V

    .line 468
    return-void
.end method

.method public onRemove(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 450
    return-void
.end method

.method public onStartDrag()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/launcher/FolderIcon;->enableDrop(Z)V

    .line 419
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 454
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 457
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/launcher/FolderIcon;->setContents(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    iget-wide v0, v0, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v0}, Lcom/htc/launcher/LauncherModel;->broadcastLauncherBarChanged(Landroid/content/Context;)V

    .line 463
    :cond_2
    return-void
.end method

.method public updateFolderThumbnail()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    .local v1, icons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    if-eqz v2, :cond_0

    .line 437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    iget-object v2, v2, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ge v0, v3, :cond_0

    .line 438
    iget-object v2, p0, Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;

    iget-object v2, v2, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    iget-object v2, v2, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/launcher/FolderIcon;->setThumbnails(Ljava/util/ArrayList;)V

    .line 442
    return-void
.end method

.method public updateShortcutIcon()V
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Lcom/htc/launcher/LauncherWorker;->get()Lcom/htc/launcher/LauncherWorker;

    move-result-object v0

    new-instance v1, Lcom/htc/launcher/FolderIcon$1;

    invoke-direct {v1, p0}, Lcom/htc/launcher/FolderIcon$1;-><init>(Lcom/htc/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherWorker;->post(Ljava/lang/Runnable;)Z

    .line 486
    return-void
.end method
