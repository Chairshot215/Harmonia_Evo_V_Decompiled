.class public abstract Lcom/htc/launcher/OperatorTabCore;
.super Ljava/lang/Object;
.source "OperatorTabCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/OperatorTabCore$Application;
    }
.end annotation


# instance fields
.field private final appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/OperatorTabCore$Application;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final initOrder:I

.field private final initPlace:I

.field private final labelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final minorNb:I

.field private final onIconPath:Ljava/io/File;

.field private final overlayIconPath:Ljava/io/File;

.field private final restIconPath:Ljava/io/File;


# direct methods
.method protected constructor <init>(ILjava/lang/String;IILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 0
    .parameter "minorNb"
    .parameter "id"
    .parameter "initOrder"
    .parameter "initPlace"
    .parameter "restIconPath"
    .parameter "onIconPath"
    .parameter "overlayIconPath"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/OperatorTabCore$Application;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p8, labelMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p9, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/OperatorTabCore$Application;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/htc/launcher/OperatorTabCore;->minorNb:I

    .line 47
    iput-object p2, p0, Lcom/htc/launcher/OperatorTabCore;->id:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/htc/launcher/OperatorTabCore;->initOrder:I

    .line 49
    iput p4, p0, Lcom/htc/launcher/OperatorTabCore;->initPlace:I

    .line 50
    iput-object p5, p0, Lcom/htc/launcher/OperatorTabCore;->restIconPath:Ljava/io/File;

    .line 51
    iput-object p6, p0, Lcom/htc/launcher/OperatorTabCore;->onIconPath:Ljava/io/File;

    .line 52
    iput-object p7, p0, Lcom/htc/launcher/OperatorTabCore;->overlayIconPath:Ljava/io/File;

    .line 53
    iput-object p8, p0, Lcom/htc/launcher/OperatorTabCore;->labelMap:Ljava/util/HashMap;

    .line 54
    iput-object p9, p0, Lcom/htc/launcher/OperatorTabCore;->appList:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/OperatorTabCore$Application;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabCore;->appList:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabCore;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInitOrder()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/launcher/OperatorTabCore;->initOrder:I

    return v0
.end method

.method public getInitPlace()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/launcher/OperatorTabCore;->initPlace:I

    return v0
.end method

.method public getLabel(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "locale"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabCore;->labelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMinorNb()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/launcher/OperatorTabCore;->minorNb:I

    return v0
.end method

.method public getOnIconPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabCore;->onIconPath:Ljava/io/File;

    return-object v0
.end method

.method public getOverlayIconPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabCore;->overlayIconPath:Ljava/io/File;

    return-object v0
.end method

.method public getRestIconPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabCore;->restIconPath:Ljava/io/File;

    return-object v0
.end method
