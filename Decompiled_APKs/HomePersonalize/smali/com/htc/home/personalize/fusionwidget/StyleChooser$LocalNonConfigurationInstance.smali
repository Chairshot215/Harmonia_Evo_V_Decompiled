.class final Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;
.super Ljava/lang/Object;
.source "StyleChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/fusionwidget/StyleChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalNonConfigurationInstance"
.end annotation


# instance fields
.field private mPosition:I

.field private mSelectedStyle:I

.field private mStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .parameter
    .parameter "pos"
    .parameter "selectedStyle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, styles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;->mStyles:Ljava/util/List;

    .line 675
    iput p2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;->mPosition:I

    .line 676
    iput p3, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;->mSelectedStyle:I

    .line 677
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;->mPosition:I

    return v0
.end method

.method public getSelectedStyle()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;->mSelectedStyle:I

    return v0
.end method

.method public getStyles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;->mStyles:Ljava/util/List;

    return-object v0
.end method
