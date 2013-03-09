.class Lcom/htc/launcher/LegacyLayout$FxSceneControl;
.super Ljava/lang/Object;
.source "LegacyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LegacyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FxSceneControl"
.end annotation


# instance fields
.field mAttachedL:Z

.field mAttachedP:Z

.field mBufferL:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mBufferP:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mFxPathL:Ljava/lang/String;

.field mFxPathP:Ljava/lang/String;

.field mMyId:I

.field mRemoteL:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

.field mRemoteP:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

.field mSceneL:Lcom/htc/fusion/fx/FxScene;

.field mSceneP:Lcom/htc/fusion/fx/FxScene;

.field mVisible:Z

.field final synthetic this$0:Lcom/htc/launcher/LegacyLayout;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/Workspace;III)V
    .locals 4
    .parameter
    .parameter "workspace"
    .parameter "w"
    .parameter "h"
    .parameter "id"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mVisible:Z

    .line 98
    invoke-virtual {p2}, Lcom/htc/launcher/Workspace;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, m10s:[Ljava/lang/String;
    add-int/lit8 v2, p3, -0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, p4, -0x1

    add-int v0, v2, v3

    .line 100
    .local v0, index:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port/scenes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mFxPathP:Ljava/lang/String;

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Land/scenes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mFxPathL:Ljava/lang/String;

    .line 102
    iput p5, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mMyId:I

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/Workspace;IIILcom/htc/launcher/LegacyLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p5}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;-><init>(Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/Workspace;III)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/launcher/LegacyLayout$FxSceneControl;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->getScene(Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/launcher/LegacyLayout$FxSceneControl;Z)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->getBuffer(Z)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/launcher/LegacyLayout$FxSceneControl;Ljava/util/concurrent/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->swap(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/launcher/LegacyLayout$FxSceneControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->attachToScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/LegacyLayout$FxSceneControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->attachInner()Z

    move-result v0

    return v0
.end method

.method private attachInner()Z
    .locals 15

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v14

    .line 151
    .local v14, v:Landroid/view/View;
    if-nez v14, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    #calls: Lcom/htc/launcher/LegacyLayout;->getItemInfo(Landroid/view/View;)Lcom/htc/launcher/ItemInfo;
    invoke-static {v0, v14}, Lcom/htc/launcher/LegacyLayout;->access$500(Lcom/htc/launcher/LegacyLayout;Landroid/view/View;)Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    .line 154
    .local v9, info:Lcom/htc/launcher/ItemInfo;
    iget v6, v9, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 155
    .local v6, cellX:I
    iget v7, v9, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 156
    .local v7, cellY:I
    iget v12, v9, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 157
    .local v12, spanX:I
    iget v13, v9, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 159
    .local v13, spanY:I
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    #calls: Lcom/htc/launcher/LegacyLayout;->isFolder()Z
    invoke-static {v0}, Lcom/htc/launcher/LegacyLayout;->access$600(Lcom/htc/launcher/LegacyLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const/4 v6, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    const/4 v12, 0x4

    .line 163
    const/4 v13, 0x4

    .line 166
    :cond_1
    const-string v0, "attachInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-direct {v5, v6, v7, v12, v13}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    .line 168
    .local v5, layout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->getFxScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v11

    .line 169
    .local v11, scene:Lcom/htc/fusion/fx/FxScene;
    instance-of v0, v14, Lcom/htc/launcher/Folder;

    if-eqz v0, :cond_4

    .line 170
    const-string v0, "LegacyLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FOLDER] attachInner() id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget v10, v9, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 172
    .local v10, nScreen:I
    iget-wide v0, v9, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, v9, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x3e5

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    #getter for: Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v0}, Lcom/htc/launcher/LegacyLayout;->access$100(Lcom/htc/launcher/LegacyLayout;)Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v10

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    #calls: Lcom/htc/launcher/LegacyLayout;->getFxScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-static {v0, v10}, Lcom/htc/launcher/LegacyLayout;->access$700(Lcom/htc/launcher/LegacyLayout;I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v8

    .line 177
    .local v8, fxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    iget-wide v0, v9, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v8, v0, v1, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->setFolder(JLcom/htc/fusion/fx/FxScene;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    iget v1, v9, Lcom/htc/launcher/ItemInfo;->screen:I

    #setter for: Lcom/htc/launcher/LegacyLayout;->mFxScreen:I
    invoke-static {v0, v1}, Lcom/htc/launcher/LegacyLayout;->access$802(Lcom/htc/launcher/LegacyLayout;I)I

    .line 179
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 182
    .end local v8           #fxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    .end local v10           #nScreen:I
    :cond_4
    const-string v0, "LegacyLayout"

    const-string v1, "[FOLDER] attachInner() addItemToScreen()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    invoke-static {v11, v0, v9}, Lcom/htc/launcher/FxItem;->create(Lcom/htc/fusion/fx/FxScene;Landroid/view/View;Lcom/htc/launcher/ItemInfo;)Lcom/htc/launcher/FxItem;

    move-result-object v4

    .line 185
    .local v4, fxItem:Lcom/htc/launcher/FxItem;
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    #calls: Lcom/htc/launcher/LegacyLayout;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    invoke-static {v0}, Lcom/htc/launcher/LegacyLayout;->access$900(Lcom/htc/launcher/LegacyLayout;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    iget v1, v9, Lcom/htc/launcher/ItemInfo;->screen:I

    iget-wide v2, v9, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->addItemToScreen(IJLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    iget v1, v9, Lcom/htc/launcher/ItemInfo;->screen:I

    #setter for: Lcom/htc/launcher/LegacyLayout;->mFxScreen:I
    invoke-static {v0, v1}, Lcom/htc/launcher/LegacyLayout;->access$802(Lcom/htc/launcher/LegacyLayout;I)I

    .line 187
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 190
    .end local v4           #fxItem:Lcom/htc/launcher/FxItem;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private attachToScreen()Z
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    #getter for: Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v0}, Lcom/htc/launcher/LegacyLayout;->access$100(Lcom/htc/launcher/LegacyLayout;)Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    new-instance v1, Lcom/htc/launcher/LegacyLayout$AttachScene;

    iget-object v2, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/launcher/LegacyLayout$AttachScene;-><init>(Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/LegacyLayout$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->schedulePendingTask(Ljava/lang/Runnable;)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method private detach()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->fxDetach()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedL:Z

    iput-boolean v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedP:Z

    .line 196
    return-void
.end method

.method private getBuffer(Z)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "isPortrait"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedP:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferP:Ljava/util/concurrent/Future;

    .line 129
    :goto_0
    return-object v0

    .line 126
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedL:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferL:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScene(Z)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "isPortrait"

    .prologue
    const/4 v1, 0x1

    .line 106
    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mFxPathP:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    .line 109
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "remote"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteP:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    .line 110
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteP:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->backBuffer()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferP:Ljava/util/concurrent/Future;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    .line 119
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mFxPathL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    .line 116
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "remote"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteL:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    .line 117
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteL:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->backBuffer()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferL:Ljava/util/concurrent/Future;

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    .line 200
    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteL:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteP:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    .line 201
    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferL:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferP:Ljava/util/concurrent/Future;

    .line 202
    return-void
.end method

.method private swap(Ljava/util/concurrent/Future;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, buffer:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferP:Ljava/util/concurrent/Future;

    if-ne p1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteP:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->swap()Ljava/util/ArrayList;

    .line 135
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteP:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->backBuffer()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferP:Ljava/util/concurrent/Future;

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferL:Ljava/util/concurrent/Future;

    if-ne p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteL:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->swap()Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mRemoteL:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->backBuffer()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mBufferL:Ljava/util/concurrent/Future;

    goto :goto_0
.end method


# virtual methods
.method setVisible(ZLjava/lang/Runnable;)V
    .locals 4
    .parameter "visible"
    .parameter "runnable"

    .prologue
    .line 206
    iget-boolean v1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mVisible:Z

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_0

    .line 259
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 210
    .local v0, futures:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    #calls: Lcom/htc/launcher/LegacyLayout;->isPortrait()Z
    invoke-static {v1}, Lcom/htc/launcher/LegacyLayout;->access$1000(Lcom/htc/launcher/LegacyLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 211
    const-string v1, "LegacyLayout"

    const-string v2, "setVisible get() timeout before get()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v1, Lcom/htc/launcher/Launcher;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/htc/launcher/LegacyLayout$FxSceneControl$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/htc/launcher/LegacyLayout$FxSceneControl$1;-><init>(Lcom/htc/launcher/LegacyLayout$FxSceneControl;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    .end local v0           #futures:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    .restart local v0       #futures:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->this$0:Lcom/htc/launcher/LegacyLayout;

    #calls: Lcom/htc/launcher/LegacyLayout;->isPortrait()Z
    invoke-static {v1}, Lcom/htc/launcher/LegacyLayout;->access$1000(Lcom/htc/launcher/LegacyLayout;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 235
    const-string v1, "LegacyLayout"

    const-string v2, "setVisible get() timeout before get()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v1, Lcom/htc/launcher/Launcher;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/htc/launcher/LegacyLayout$FxSceneControl$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/htc/launcher/LegacyLayout$FxSceneControl$2;-><init>(Lcom/htc/launcher/LegacyLayout$FxSceneControl;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    .end local v0           #futures:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    :cond_2
    iput-boolean p1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mVisible:Z

    .line 258
    const-string v1, "LegacyLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FxSceneControl.setVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
