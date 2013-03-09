.class public Lcom/android/camera/SnapboothIntentManager;
.super Ljava/lang/Object;
.source "SnapboothIntentManager.java"


# static fields
.field private static final CROP:Ljava/lang/String; = "crop"

.field private static final EXTRAS_SQUARE_LENGTH:Ljava/lang/String; = "output-length"

.field private static final LAUNCH_SNAPBOOTH:Ljava/lang/String; = "com.htc.snapbooth.action.LAUNCH_SNAPBOOTH"

.field private static final REQUESTED:Ljava/lang/String; = "RequestedFrom"

.field private static final TAG:Ljava/lang/String; = "SnapboothIntentManager"


# instance fields
.field private mCropValue:Ljava/lang/String;

.field private mIsServiceMode:Z

.field private mRequestName:Lcom/android/camera/IntentRequestName;

.field private mSaveUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SnapboothIntentManager;->mCropValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/SnapboothIntentManager;->mSaveUri:Landroid/net/Uri;

    return-void
.end method

.method private checkExtras(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/android/camera/SnapboothIntentManager;->mSaveUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/SnapboothIntentManager;->mCropValue:Ljava/lang/String;

    const-string v1, "SnapboothIntentManager"

    const-string v2, "extras == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "output"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/SnapboothIntentManager;->mSaveUri:Landroid/net/Uri;

    const-string v1, "crop"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SnapboothIntentManager;->mCropValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/SnapboothIntentManager;->mRequestName:Lcom/android/camera/IntentRequestName;

    sget-object v2, Lcom/android/camera/IntentRequestName;->Square:Lcom/android/camera/IntentRequestName;

    if-ne v1, v2, :cond_0

    const-string v1, "output-length"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "output-length"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SnapboothIntentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has extras \'output-length\' = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_2

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    sput v1, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    goto :goto_0
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const-string v0, "SnapboothIntentManager"

    const-string v1, "intent = null!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.htc.snapbooth.action.LAUNCH_SNAPBOOTH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SnapboothIntentManager"

    const-string v1, "action: LAUNCH_SNAPBOOTH"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SnapboothIntentManager;->mIsServiceMode:Z

    :goto_1
    const-string v0, "RequestedFrom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/IntentRequestName;->fromName(Ljava/lang/String;)Lcom/android/camera/IntentRequestName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothIntentManager;->mRequestName:Lcom/android/camera/IntentRequestName;

    iget-object v0, p0, Lcom/android/camera/SnapboothIntentManager;->mRequestName:Lcom/android/camera/IntentRequestName;

    sget-object v1, Lcom/android/camera/IntentRequestName;->Album:Lcom/android/camera/IntentRequestName;

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/android/camera/SnapboothIntentManager;->mIsServiceMode:Z

    goto :goto_0

    :cond_2
    const-string v0, "SnapboothIntentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action from class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/camera/SnapboothIntentManager;->mIsServiceMode:Z

    goto :goto_1
.end method


# virtual methods
.method public getRequestName()Lcom/android/camera/IntentRequestName;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothIntentManager;->mRequestName:Lcom/android/camera/IntentRequestName;

    return-object v0
.end method

.method public getSaveUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothIntentManager;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public initManager(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothIntentManager;->checkIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/SnapboothIntentManager;->checkExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public isServiceMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothIntentManager;->mIsServiceMode:Z

    return v0
.end method
