.class Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;
.super Ljava/lang/Object;
.source "SIPSwitcherHWKB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/SIPSwitcherHWKB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentSensitiveStatus"
.end annotation


# instance fields
.field mPosition:I

.field mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

.field final synthetic this$0:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V
    .locals 1
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->this$0:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    .line 717
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    return-void
.end method


# virtual methods
.method public clearStatus()V
    .locals 1

    .prologue
    .line 720
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    .line 721
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    .line 722
    return-void
.end method
