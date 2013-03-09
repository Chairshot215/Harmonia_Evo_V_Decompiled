.class public Lcom/htc/laputa/engine/util/Category;
.super Ljava/lang/Object;
.source "Category.java"


# static fields
.field public static final ROOT_CATEGORYID:I = 0xff00

.field public static final ROOT_CATEGORYID_ADDRESS:I = 0xff04

.field public static final ROOT_CATEGORYID_CONTACT:I = 0xff05

.field public static final ROOT_CATEGORYID_FOOTPRINT:I = 0xff02

.field public static final ROOT_CATEGORYID_POI:I = 0xff03

.field public static final ROOT_CATEGORYID_RECENT:I = 0xff01

.field public static final ROOT_CATEGORYID_TRIPWAYPOINT:I = 0xff06


# instance fields
.field private mDataCount:I

.field private mIconPath:Ljava/lang/String;

.field private mId:I

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "dataCount"
    .parameter "iconPath"

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/htc/laputa/engine/util/Category;->mId:I

    .line 155
    iput-object p2, p0, Lcom/htc/laputa/engine/util/Category;->mName:Ljava/lang/String;

    .line 156
    iput p3, p0, Lcom/htc/laputa/engine/util/Category;->mDataCount:I

    .line 157
    iput-object p4, p0, Lcom/htc/laputa/engine/util/Category;->mIconPath:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public static createCategoryBundle(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "iconPath"
    .parameter "dataCount"

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, ctgryBndl:Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "icon_path"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "item_count"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    return-object v0
.end method

.method public static createFromBundle(Landroid/os/Bundle;)Lcom/htc/laputa/engine/util/Category;
    .locals 5
    .parameter "bndl"

    .prologue
    .line 130
    new-instance v0, Lcom/htc/laputa/engine/util/Category;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "item_count"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "icon_path"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/laputa/engine/util/Category;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static enumSubCategory(I)Ljava/util/List;
    .locals 11
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/laputa/engine/util/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v8, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 101
    .local v8, svcAdptr:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v4, param:Landroid/os/Bundle;
    const-string v9, "category"

    invoke-virtual {v4, v9, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v8, v4, v5}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v2

    .line 106
    .local v2, errCode:I
    const/4 v6, 0x0

    .line 109
    .local v6, retCateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/Category;>;"
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    const-string v10, "2"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 110
    .local v0, bndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v6           #retCateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/Category;>;"
    .local v7, retCateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/Category;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 113
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    invoke-static {v9}, Lcom/htc/laputa/engine/util/Category;->createFromBundle(Landroid/os/Bundle;)Lcom/htc/laputa/engine/util/Category;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 120
    .end local v0           #bndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v3           #i:I
    .end local v7           #retCateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/Category;>;"
    .restart local v6       #retCateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/Category;>;"
    :goto_1
    return-object v6

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const-class v9, Lcom/htc/laputa/engine/util/Category;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "enumSubCategory failed."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v6, 0x0

    goto :goto_1

    .line 115
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #retCateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/Category;>;"
    .restart local v0       #bndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v3       #i:I
    .restart local v7       #retCateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/Category;>;"
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7           #retCateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/Category;>;"
    .restart local v6       #retCateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/Category;>;"
    goto :goto_2
.end method

.method public static query(Ljava/lang/String;I)Lcom/htc/laputa/engine/util/Category;
    .locals 10
    .parameter "categoryId"
    .parameter "rootCategory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    new-instance v7, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v8, 0xb

    invoke-direct {v7, v8}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 39
    .local v7, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v4, param:Landroid/os/Bundle;
    const-string v8, "keyword"

    invoke-virtual {v4, v8, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v8, "category"

    invoke-virtual {v4, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v6, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v7, v4, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v3

    .line 46
    .local v3, errCode:I
    const/4 v5, 0x0

    .line 64
    .local v5, retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    const/4 v1, 0x0

    .line 66
    .local v1, cate:Lcom/htc/laputa/engine/util/Category;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    const-string v9, "2"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, bndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v8}, Lcom/htc/laputa/engine/util/Category;->createFromBundle(Landroid/os/Bundle;)Lcom/htc/laputa/engine/util/Category;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    .end local v0           #bndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v2

    .line 70
    .local v2, e:Ljava/lang/Exception;
    const-class v8, Lcom/htc/laputa/engine/util/Category;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "query failed."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDataCount()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/laputa/engine/util/Category;->mDataCount:I

    return v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Category;->mIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/htc/laputa/engine/util/Category;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Category;->mName:Ljava/lang/String;

    return-object v0
.end method
