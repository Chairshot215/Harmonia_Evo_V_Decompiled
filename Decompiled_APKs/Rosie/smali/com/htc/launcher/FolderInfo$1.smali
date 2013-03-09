.class Lcom/htc/launcher/FolderInfo$1;
.super Ljava/lang/Object;
.source "FolderInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/launcher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/FolderInfo;


# direct methods
.method constructor <init>(Lcom/htc/launcher/FolderInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/launcher/FolderInfo$1;->this$0:Lcom/htc/launcher/FolderInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I
    .locals 2
    .parameter "info1"
    .parameter "info2"

    .prologue
    .line 60
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v1, p2, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_0

    .line 61
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v1, p2, Lcom/htc/launcher/ItemInfo;->cellY:I

    sub-int/2addr v0, v1

    .line 63
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v1, p2, Lcom/htc/launcher/ItemInfo;->cellX:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/htc/launcher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/FolderInfo$1;->compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
