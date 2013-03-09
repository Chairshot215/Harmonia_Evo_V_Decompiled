.class public Lcom/htc/launcher/config/FavoriteData;
.super Ljava/lang/Object;
.source "FavoriteData.java"


# static fields
.field public static final ITEM_APPLICATION:I = 0x0

.field public static final ITEM_FOLDER:I = 0x2

.field public static final ITEM_SHORTCUT:I = 0x1


# instance fields
.field public className:Ljava/lang/String;

.field public container:I

.field public icon:Ljava/lang/String;

.field public itemtype:I

.field public packageName:Ljava/lang/String;

.field public removable:I

.field public screen:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public workspaceId:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/config/FavoriteData;->container:I

    .line 32
    iput v1, p0, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 33
    iput v1, p0, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 35
    return-void
.end method
