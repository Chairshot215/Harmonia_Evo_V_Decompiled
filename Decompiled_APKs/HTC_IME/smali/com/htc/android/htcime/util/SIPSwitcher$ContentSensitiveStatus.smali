.class Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;
.super Ljava/lang/Object;
.source "SIPSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/SIPSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentSensitiveStatus"
.end annotation


# instance fields
.field mPosition:I

.field mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

.field final synthetic this$0:Lcom/htc/android/htcime/util/SIPSwitcher;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/SIPSwitcher;)V
    .locals 1
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    .line 980
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    return-void
.end method


# virtual methods
.method public clearStatus()V
    .locals 1

    .prologue
    .line 983
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    .line 984
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_OFF:Z

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 985
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    .line 986
    return-void
.end method
