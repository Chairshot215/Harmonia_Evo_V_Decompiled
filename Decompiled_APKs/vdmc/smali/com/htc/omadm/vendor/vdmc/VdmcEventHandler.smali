.class public Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;
.super Landroid/os/Handler;
.source "VdmcEventHandler.java"


# static fields
.field public static final EVENT_ACCESS_TOGGLE_READ:I = 0x1

.field public static final EVENT_ACCESS_TOGGLE_WRITE:I = 0x2

.field public static final EVENT_MAPPING_STR:[Ljava/lang/String; = null

.field public static final EVENT_SESSION_DL_ABORTED:I = 0x7

.field public static final EVENT_SESSION_DL_DOWNLOADING:I = 0x4

.field public static final EVENT_SESSION_DL_ENDED:I = 0x6

.field public static final EVENT_SESSION_DL_STARTED:I = 0x5

.field public static final EVENT_SESSION_DM_ABORTED:I = 0xa

.field public static final EVENT_SESSION_DM_ENDED:I = 0x9

.field public static final EVENT_SESSION_DM_STARTED:I = 0x8

.field public static final EVENT_UPDATE_DESCRIPTION:I = 0x3

.field protected static LOG_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;


# instance fields
.field protected DBG:Z

.field private hasProvision:Z

.field private hasShowFirstGUI:Z

.field private mContext:Landroid/content/Context;

.field private mDMSession:Lcom/htc/omadm/rule/DMSession;

.field private mDescription:Ljava/lang/String;

.field private nExpTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-string v0, "VdmcEventHandler"

    sput-object v0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->LOG_TAG:Ljava/lang/String;

    .line 49
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EVENT_ACCESS_TOGGLE_READ"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EVENT_ACCESS_TOGGLE_WRITE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EVENT_UPDATE_DESCRIPTION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EVENT_SESSION_DL_DOWNLOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EVENT_SESSION_DL_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EVENT_SESSION_DL_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EVENT_SESSION_DL_ABORTED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EVENT_SESSION_DM_STARTED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EVENT_SESSION_DM_ENDED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EVENT_SESSION_DM_ABORTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->EVENT_MAPPING_STR:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->DBG:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->hasProvision:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->hasShowFirstGUI:Z

    .line 57
    iput-object p1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    new-instance v0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    invoke-direct {v0, p0}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mInstance:Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    .line 66
    return-void
.end method

.method private accessToggle(II)V
    .locals 3
    .parameter "nType"
    .parameter "write"

    .prologue
    const/4 v2, 0x1

    .line 159
    iget-boolean v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->hasProvision:Z

    if-nez v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 160
    iput-boolean v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->hasProvision:Z

    .line 164
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 165
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 166
    iget-object v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v1, v0}, Lcom/htc/omadm/rule/DMSession;->handleMessage(Landroid/os/Message;)V

    .line 169
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-boolean v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->hasShowFirstGUI:Z

    if-nez v1, :cond_1

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 175
    :pswitch_0
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->changeSessionMode(I)V

    goto :goto_0

    .line 181
    :pswitch_1
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->changeSessionMode(I)V

    goto :goto_0

    .line 184
    :pswitch_2
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->changeSessionMode(I)V

    goto :goto_0

    .line 187
    :pswitch_3
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->changeSessionMode(I)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private changeSessionMode(I)V
    .locals 4
    .parameter "newType"

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v1

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/htc/omadm/prop/PropertyState;->DM_TYPE_IS_NI:[Z

    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v1}, Lcom/htc/omadm/rule/DMSession;->getGUIPrototype()Lcom/htc/omadm/gui/SprintGuiPrototype;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/omadm/gui/SprintGuiPrototype;->getDisplayDialog()Z

    move-result v0

    .line 200
    .local v0, DisplayDialogState:Z
    iget-object v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {p1}, Lcom/htc/omadm/rule/DMSession;->SetSessionType(I)V

    .line 201
    iget-object v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v1}, Lcom/htc/omadm/rule/DMSession;->InitGUI()V

    .line 203
    if-nez v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v1}, Lcom/htc/omadm/rule/DMSession;->getGUIPrototype()Lcom/htc/omadm/gui/SprintGuiPrototype;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setDisplayDialog(Z)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v1}, Lcom/htc/omadm/rule/DMSession;->getGUIPrototype()Lcom/htc/omadm/gui/SprintGuiPrototype;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showReady(Z)V

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->hasShowFirstGUI:Z

    .line 211
    .end local v0           #DisplayDialogState:Z
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v1}, Lcom/htc/omadm/rule/DMSession;->getGUIPrototype()Lcom/htc/omadm/gui/SprintGuiPrototype;

    move-result-object v1

    iput-boolean v3, v1, Lcom/htc/omadm/gui/ext/DMGui;->bBackground:Z

    goto :goto_0
.end method

.method public static getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mInstance:Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mInstance:Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    .line 62
    :cond_0
    sget-object v0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mInstance:Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    return-object v0
.end method


# virtual methods
.method public CreateNewDMSession(Lcom/htc/omadm/rule/DMSession;)V
    .locals 1
    .parameter "dmSession"

    .prologue
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->hasProvision:Z

    .line 70
    iput-boolean v0, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->hasShowFirstGUI:Z

    .line 71
    iput-object p1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    .line 72
    return-void
.end method

.method public UpdateDescription(Ljava/lang/String;I)V
    .locals 0
    .parameter "description"
    .parameter "installTime"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDescription:Ljava/lang/String;

    .line 215
    iput p2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->nExpTime:I

    .line 216
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 75
    sget-object v2, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->LOG_TAG:Ljava/lang/String;

    sget-object v3, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->EVENT_MAPPING_STR:[Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->what:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_AVALIABLE:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADING:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_ABORT:I

    if-eq v2, v3, :cond_0

    .line 86
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->accessToggle(II)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v2, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_AVALIABLE:I

    invoke-static {v2}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    goto :goto_0

    .line 92
    :pswitch_3
    sget-boolean v2, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v2}, Lcom/htc/omadm/rule/DMSession;->getGUIPrototype()Lcom/htc/omadm/gui/SprintGuiPrototype;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showProgressBar(II)V

    .line 95
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v2, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADING:I

    invoke-static {v2}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    goto :goto_0

    .line 100
    :pswitch_4
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_AVALIABLE:I

    if-ne v2, v3, :cond_0

    .line 101
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v2}, Lcom/htc/omadm/rule/DMSession;->getGUIPrototype()Lcom/htc/omadm/gui/SprintGuiPrototype;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showConnecting()V

    goto :goto_0

    .line 104
    :pswitch_5
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v2}, Lcom/htc/omadm/rule/DMSession;->getGUIPrototype()Lcom/htc/omadm/gui/SprintGuiPrototype;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDescription:Ljava/lang/String;

    iget v4, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->nExpTime:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showInstall(Ljava/lang/String;I)V

    .line 105
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v2, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    invoke-static {v2}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    goto :goto_0

    .line 109
    :pswitch_6
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 110
    .local v1, resume_download_msg:Landroid/os/Message;
    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->what:I

    .line 111
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v2, v1}, Lcom/htc/omadm/rule/DMSession;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 119
    .end local v1           #resume_download_msg:Landroid/os/Message;
    :pswitch_7
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_AVALIABLE:I

    if-ne v2, v3, :cond_1

    .line 123
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 124
    .local v0, msg2:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 125
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v2, v0}, Lcom/htc/omadm/rule/DMSession;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 129
    .end local v0           #msg2:Landroid/os/Message;
    :cond_1
    iget-boolean v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->hasProvision:Z

    if-eqz v2, :cond_2

    .line 133
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 134
    .restart local v0       #msg2:Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 135
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v2, v0}, Lcom/htc/omadm/rule/DMSession;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 141
    .end local v0           #msg2:Landroid/os/Message;
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 142
    .restart local v0       #msg2:Landroid/os/Message;
    const/16 v2, 0xa

    iput v2, v0, Landroid/os/Message;->what:I

    .line 143
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v2, v0}, Lcom/htc/omadm/rule/DMSession;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 149
    .end local v0           #msg2:Landroid/os/Message;
    :pswitch_8
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v0       #msg2:Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 151
    iget-object v2, p0, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v2, v0}, Lcom/htc/omadm/rule/DMSession;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
