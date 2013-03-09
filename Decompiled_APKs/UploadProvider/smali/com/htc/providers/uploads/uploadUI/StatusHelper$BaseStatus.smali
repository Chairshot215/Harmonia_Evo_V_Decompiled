.class public Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;
.super Ljava/lang/Object;
.source "StatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/uploadUI/StatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BaseStatus"
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected MoreActions:[Ljava/lang/String;

.field itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/providers/uploads/UploadItem;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

.field titleView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/htc/providers/uploads/uploadUI/StatusHelper;Landroid/content/Context;Landroid/widget/RelativeLayout;[I)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter "title"
    .parameter "more"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const-string v2, "BaseStatus"

    iput-object v2, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->LOG_TAG:Ljava/lang/String;

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    .line 221
    iput-object p3, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->titleView:Landroid/widget/RelativeLayout;

    .line 222
    array-length v1, p4

    .line 223
    .local v1, more_size:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->MoreActions:[Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->MoreActions:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, p4, v0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iput-object p2, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->mContext:Landroid/content/Context;

    .line 228
    return-void
.end method


# virtual methods
.method addItem(Lcom/htc/providers/uploads/UploadItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public clearNotifications()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    return-void
.end method

.method public getItemById(I)Lcom/htc/providers/uploads/UploadItem;
    .locals 2
    .parameter "id"

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/providers/uploads/UploadItem;

    invoke-interface {v1}, Lcom/htc/providers/uploads/UploadItem;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/providers/uploads/UploadItem;

    .line 251
    :goto_1
    return-object v1

    .line 247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLastItem()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->titleView:Landroid/widget/RelativeLayout;

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method removeItem(Lcom/htc/providers/uploads/UploadItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
