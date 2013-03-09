.class public Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;
.super Ljava/lang/Object;
.source "ComponentUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dcs/util/ComponentUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentLocationInfo"
.end annotation


# instance fields
.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public paramStr:Ljava/lang/String;

.field public status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->status:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->latitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->longitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dcs/util/ComponentUtility$CurrentLocationInfo;->paramStr:Ljava/lang/String;

    return-void
.end method
