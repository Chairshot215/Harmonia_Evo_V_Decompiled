.class public abstract Lcom/android/camera/actionscreen/ActionScreen;
.super Lcom/android/camera/component/UIComponent;
.source "ActionScreen.java"


# static fields
.field public static final CLOSE_REASON_AUTO_CLOSE:I = 0x0

.field public static final CLOSE_REASON_CAPTURE:I = 0x1

.field public static final CLOSE_REASON_DELETE_CONTENT:I = 0x2

.field public static final CLOSE_REASON_UNKNOWN:I = -0x1

.field private static final STATE_CLOSED:I = 0x1

.field private static final STATE_CLOSING:I = 0x2

.field private static final STATE_OPEN:I = 0x3

.field private static final STATE_OPENING:I = 0x4


# instance fields
.field private m_CloseReason:I

.field private m_IsMediaSaved:Z

.field private m_IsPrepared:Z

.field private m_Layout:Landroid/view/View;

.field private m_LayoutID:I

.field private final m_MediaSaveCompletedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_State:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f08006d

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CloseReason:I

    iput v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    new-instance v0, Lcom/android/camera/actionscreen/ActionScreen$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/ActionScreen$1;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_MediaSaveCompletedEventHandler:Lcom/android/camera/IEventHandler;

    iput p3, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LayoutID:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actionscreen/ActionScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/actionscreen/ActionScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/ActionScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/actionscreen/ActionScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/actionscreen/ActionScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final close(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CloseReason:I

    invoke-virtual {p0, p2}, Lcom/android/camera/actionscreen/ActionScreen;->close(Z)V

    return-void
.end method

.method public final close(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "close() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is already closed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    const-string v2, "ActionScreen.Closing"

    iget v3, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CloseReason:I

    invoke-direct {v1, v2, p0, v3}, Lcom/android/camera/actionscreen/ActionScreenEvent;-><init>(Ljava/lang/String;Lcom/android/camera/actionscreen/ActionScreen;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->closeActionScreen(Z)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->completeCloseActionScreen()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "close() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract closeActionScreen(Z)V
.end method

.method protected final completeCloseActionScreen()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "completeCloseActionScreen() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is not closing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    iput-boolean v4, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    const-string v2, "ActionScreen.Closed"

    iget v3, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CloseReason:I

    invoke-direct {v1, v2, p0, v3}, Lcom/android/camera/actionscreen/ActionScreenEvent;-><init>(Ljava/lang/String;Lcom/android/camera/actionscreen/ActionScreen;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    iput v4, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CloseReason:I

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "completeCloseActionScreen() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final getCloseReason()I
    .locals 1

    iget v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CloseReason:I

    return v0
.end method

.method protected final getLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Key.Down"

    new-instance v2, Lcom/android/camera/actionscreen/ActionScreen$2;

    invoke-direct {v2, p0}, Lcom/android/camera/actionscreen/ActionScreen$2;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Key.Up"

    new-instance v2, Lcom/android/camera/actionscreen/ActionScreen$3;

    invoke-direct {v2, p0}, Lcom/android/camera/actionscreen/ActionScreen$3;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Media.Saved"

    iget-object v2, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_MediaSaveCompletedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Media.SaveFailed"

    iget-object v2, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_MediaSaveCompletedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method

.method public final isClosing()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isMediaSaved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return v0
.end method

.method public final isOpen()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOpening()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V
    .locals 0

    return-void
.end method

.method public final open()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "open() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is not closed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->openActionScreen()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_State:I

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    const-string v2, "ActionScreen.Open"

    invoke-direct {v1, v2, p0}, Lcom/android/camera/actionscreen/ActionScreenEvent;-><init>(Ljava/lang/String;Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "open() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract openActionScreen()V
.end method

.method public final prepare()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LayoutID:I

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LayoutID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->prepareActionScreen()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract prepareActionScreen()V
.end method

.method protected final setCloseReason(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CloseReason:I

    return-void
.end method
