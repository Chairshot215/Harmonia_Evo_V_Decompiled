.class public abstract Lcom/htc/sunny2/widget/gridview/GridViewItem;
.super Lcom/htc/sunny2/view/SViewGroup;
.source "GridViewItem.java"

# interfaces
.implements Lcom/htc/sunny2/ViewItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    }
.end annotation


# static fields
.field public static final STYLE_DELETE:I = 0x2

.field public static final STYLE_FAVORITE:I = 0x3

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_PICKER:I = 0x1

.field private static sTextureManager:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBindMediaDataListener:Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mBindMediaDataListener:Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mBindMediaDataListener:Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;

    return-void
.end method

.method protected static getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    goto :goto_0
.end method

.method protected static isExist(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    goto :goto_0
.end method

.method protected static setSharedTexture(Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mBindMediaDataListener:Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;

    return-void
.end method

.method public abstract setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V
.end method

.method public abstract setStyle(I)V
.end method

.method public abstract setThumbnail(Lcom/htc/sunny2/Texture;)V
.end method
