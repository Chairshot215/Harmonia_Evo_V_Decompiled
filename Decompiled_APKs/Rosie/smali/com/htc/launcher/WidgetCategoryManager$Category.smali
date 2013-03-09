.class public Lcom/htc/launcher/WidgetCategoryManager$Category;
.super Ljava/lang/Object;
.source "WidgetCategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/WidgetCategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# instance fields
.field mCategoryId:I

.field mIconResId:I

.field mTextResId:I

.field private mWidgetItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetCategoryManager$Category;->mWidgetItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/WidgetCategoryManager$Category;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/launcher/WidgetCategoryManager$Category;->mWidgetItems:Ljava/util/ArrayList;

    return-object v0
.end method
