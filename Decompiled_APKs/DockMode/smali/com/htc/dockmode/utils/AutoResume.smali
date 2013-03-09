.class public Lcom/htc/dockmode/utils/AutoResume;
.super Ljava/lang/Object;
.source "AutoResume.java"


# static fields
.field public static final BUTTON_CONNECT_MEDIA:I = 0x1

.field public static final BUTTON_PHOTO_FRAME:I

.field private static sInstance:Lcom/htc/dockmode/utils/AutoResume;


# instance fields
.field private mConnectMediaClick:Landroid/view/View$OnClickListener;

.field private mLastPressed:I

.field private mPhotoFrameClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dockmode/utils/AutoResume;->mLastPressed:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/htc/dockmode/utils/AutoResume;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/htc/dockmode/utils/AutoResume;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/dockmode/utils/AutoResume;->sInstance:Lcom/htc/dockmode/utils/AutoResume;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/htc/dockmode/utils/AutoResume;

    invoke-direct {v0}, Lcom/htc/dockmode/utils/AutoResume;-><init>()V

    sput-object v0, Lcom/htc/dockmode/utils/AutoResume;->sInstance:Lcom/htc/dockmode/utils/AutoResume;

    .line 18
    :cond_0
    sget-object v0, Lcom/htc/dockmode/utils/AutoResume;->sInstance:Lcom/htc/dockmode/utils/AutoResume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLastPressed()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/dockmode/utils/AutoResume;->mLastPressed:I

    return v0
.end method

.method public gotoRecentApp(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/AutoResume;->getLastPressed()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dockmode/utils/AutoResume;->mPhotoFrameClick:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/htc/dockmode/utils/AutoResume;->mPhotoFrameClick:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dockmode/utils/AutoResume;->mConnectMediaClick:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/htc/dockmode/utils/AutoResume;->mConnectMediaClick:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasLastPressed()Z
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/dockmode/utils/AutoResume;->mLastPressed:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLastPressed(I)V
    .locals 0
    .parameter "lastPressed"

    .prologue
    .line 26
    iput p1, p0, Lcom/htc/dockmode/utils/AutoResume;->mLastPressed:I

    .line 27
    return-void
.end method

.method public setOnConnectMediaClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/dockmode/utils/AutoResume;->mConnectMediaClick:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method

.method public setOnPhotoFrameClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/dockmode/utils/AutoResume;->mPhotoFrameClick:Landroid/view/View$OnClickListener;

    .line 50
    return-void
.end method
