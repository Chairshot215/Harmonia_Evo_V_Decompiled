.class public Lcom/redbend/vdmc/Storage;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Lcom/redbend/vdm/PLStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Storage$1;
    }
.end annotation


# static fields
.field private static final DLRESUME_FILENAME:Ljava/lang/String; = "dlresume.dat"

.field private static final DMTREE_FILENAME:Ljava/lang/String; = "tree.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "Storage"


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/redbend/vdmc/Storage;->_context:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public delete(Lcom/redbend/vdm/PLStorage$ItemType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 40
    sget-object v1, Lcom/redbend/vdm/PLStorage$ItemType;->DMTREE:Lcom/redbend/vdm/PLStorage$ItemType;

    if-ne p1, v1, :cond_0

    const-string v0, "tree.xml"

    .line 41
    .local v0, filename:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/redbend/vdmc/Storage;->_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 42
    return-void

    .line 40
    .end local v0           #filename:Ljava/lang/String;
    :cond_0
    const-string v0, "dlresume.dat"

    goto :goto_0
.end method

.method public open(Lcom/redbend/vdm/PLStorage$ItemType;Lcom/redbend/vdm/PLStorage$AccessMode;)Lcom/redbend/vdm/PLFile;
    .locals 6
    .parameter "type"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    sget-object v2, Lcom/redbend/vdm/PLStorage$ItemType;->DMTREE:Lcom/redbend/vdm/PLStorage$ItemType;

    if-ne p1, v2, :cond_0

    const-string v1, "tree.xml"

    .line 22
    .local v1, filename:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 23
    .local v0, file:Lcom/redbend/vdm/PLFile;
    sget-object v2, Lcom/redbend/vdmc/Storage$1;->$SwitchMap$com$redbend$vdm$PLStorage$AccessMode:[I

    invoke-virtual {p2}, Lcom/redbend/vdm/PLStorage$AccessMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 37
    :goto_1
    return-object v0

    .line 19
    .end local v0           #file:Lcom/redbend/vdm/PLFile;
    .end local v1           #filename:Ljava/lang/String;
    :cond_0
    const-string v1, "dlresume.dat"

    goto :goto_0

    .line 25
    .restart local v0       #file:Lcom/redbend/vdm/PLFile;
    .restart local v1       #filename:Ljava/lang/String;
    :pswitch_0
    sget-object v2, Lcom/redbend/vdm/PLStorage$ItemType;->DMTREE:Lcom/redbend/vdm/PLStorage$ItemType;

    if-ne p1, v2, :cond_1

    .line 26
    new-instance v0, Lcom/redbend/vdmc/InputFile;

    .end local v0           #file:Lcom/redbend/vdm/PLFile;
    iget-object v2, p0, Lcom/redbend/vdmc/Storage;->_context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v5}, Lcom/redbend/vdmc/InputFile;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .restart local v0       #file:Lcom/redbend/vdm/PLFile;
    goto :goto_1

    .line 28
    :cond_1
    new-instance v0, Lcom/redbend/vdmc/InputFile;

    .end local v0           #file:Lcom/redbend/vdm/PLFile;
    iget-object v2, p0, Lcom/redbend/vdmc/Storage;->_context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v4}, Lcom/redbend/vdmc/InputFile;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 29
    .restart local v0       #file:Lcom/redbend/vdm/PLFile;
    goto :goto_1

    .line 31
    :pswitch_1
    sget-object v2, Lcom/redbend/vdm/PLStorage$ItemType;->DMTREE:Lcom/redbend/vdm/PLStorage$ItemType;

    if-ne p1, v2, :cond_2

    .line 32
    new-instance v0, Lcom/redbend/vdmc/OutputFile;

    .end local v0           #file:Lcom/redbend/vdm/PLFile;
    iget-object v2, p0, Lcom/redbend/vdmc/Storage;->_context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v5}, Lcom/redbend/vdmc/OutputFile;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .restart local v0       #file:Lcom/redbend/vdm/PLFile;
    goto :goto_1

    .line 34
    :cond_2
    new-instance v0, Lcom/redbend/vdmc/OutputFile;

    .end local v0           #file:Lcom/redbend/vdm/PLFile;
    iget-object v2, p0, Lcom/redbend/vdmc/Storage;->_context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v4}, Lcom/redbend/vdmc/OutputFile;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .restart local v0       #file:Lcom/redbend/vdm/PLFile;
    goto :goto_1

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
