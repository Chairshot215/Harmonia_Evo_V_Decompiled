.class public Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;
.super Ljava/lang/Object;
.source "VdmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/VdmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DmAccConfiguration"
.end annotation


# instance fields
.field public activeAccountDMVersion:Lcom/redbend/vdm/VdmConfig$DmVersion;

.field public dm12root:Ljava/lang/String;

.field final synthetic this$0:Lcom/redbend/vdm/VdmConfig;

.field public updateInactiveDMAccount:Z


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/VdmConfig;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->this$0:Lcom/redbend/vdm/VdmConfig;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/redbend/vdm/VdmConfig$DmVersion;->DM_1_2:Lcom/redbend/vdm/VdmConfig$DmVersion;

    iput-object v0, p0, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->activeAccountDMVersion:Lcom/redbend/vdm/VdmConfig$DmVersion;

    .line 89
    const-string v0, "./DMAcc"

    iput-object v0, p0, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->dm12root:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->updateInactiveDMAccount:Z

    .line 91
    return-void
.end method
