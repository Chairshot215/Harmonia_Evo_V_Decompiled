.class public final Lcom/android/facelock/SetupFaceLock;
.super Landroid/preference/PreferenceActivity;
.source "SetupFaceLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/facelock/SetupFaceLock$1;,
        Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;
    }
.end annotation


# static fields
.field private static mFragment:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/facelock/SetupFaceLock;->mFragment:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$202(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/android/facelock/SetupFaceLock;->mFragment:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 67
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 74
    sget-object v0, Lcom/android/facelock/SetupFaceLock;->mFragment:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/facelock/SetupFaceLock;->mFragment:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    invoke-virtual {v0, p1}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->onWindowFocusChanged(Z)V

    .line 75
    :cond_0
    return-void
.end method
