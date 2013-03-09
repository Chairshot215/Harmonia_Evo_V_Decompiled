.class Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
.super Lcom/htc/music/util/SourceItem;
.source "StoreSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/StoreSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultSourceItem"
.end annotation


# instance fields
.field mRequestCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;->mRequestCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;->mRequestCode:I

    iput p3, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;->mRequestCode:I

    return-void
.end method
