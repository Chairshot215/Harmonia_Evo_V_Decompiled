.class public abstract Lcom/htc/launcher/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field public static final NO_ID:I = -0x1

.field public static final max_screen:I


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field iconname:Ljava/lang/String;

.field public id:J

.field public itemType:I

.field public removable:Z

.field public screen:I

.field public spanX:I

.field public spanY:I

.field public workspaceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    sput v0, Lcom/htc/launcher/ItemInfo;->max_screen:I

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v2, p0, Lcom/htc/launcher/ItemInfo;->id:J

    .line 56
    iput-wide v2, p0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 61
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 66
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 71
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 76
    iput v1, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 81
    iput v1, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 88
    iput-boolean v1, p0, Lcom/htc/launcher/ItemInfo;->removable:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    .line 98
    return-void
.end method

.method constructor <init>(Lcom/htc/launcher/ItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v2, p0, Lcom/htc/launcher/ItemInfo;->id:J

    .line 56
    iput-wide v2, p0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 61
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 66
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 71
    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 76
    iput v1, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 81
    iput v1, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 88
    iput-boolean v1, p0, Lcom/htc/launcher/ItemInfo;->removable:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    .line 101
    iget-wide v0, p1, Lcom/htc/launcher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/htc/launcher/ItemInfo;->id:J

    .line 102
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 103
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 104
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 105
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 106
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 107
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 108
    iget-wide v0, p1, Lcom/htc/launcher/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 111
    iget-boolean v0, p1, Lcom/htc/launcher/ItemInfo;->removable:Z

    iput-boolean v0, p0, Lcom/htc/launcher/ItemInfo;->removable:Z

    .line 115
    iget-object v0, p1, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public abstract createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;
.end method

.method public editItem()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public abstract getId()J
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, ""

    .line 155
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, ""

    .line 160
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getUlog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, ""

    .line 165
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public isItemEditable()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 125
    const-string v0, "itemType"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v0, "container"

    iget-wide v1, p0, Lcom/htc/launcher/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string v0, "screen"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v0, "cellX"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v0, "cellY"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v0, "spanX"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v0, "spanY"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "workspace_id"

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellX("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanX("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "removable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/launcher/ItemInfo;->removable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconname("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
