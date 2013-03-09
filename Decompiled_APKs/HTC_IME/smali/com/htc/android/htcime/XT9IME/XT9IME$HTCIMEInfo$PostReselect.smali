.class public Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostReselect"
.end annotation


# instance fields
.field final DEBUG:Z

.field isActive:Z

.field mSelLstMode_Org:I

.field mSpellCheckState_Org:I

.field final synthetic this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 6707
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->DEBUG:Z

    return-void
.end method

.method private backupEngineState()V
    .locals 1

    .prologue
    .line 6750
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->mSelLstMode_Org:I

    .line 6751
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->mSpellCheckState_Org:I

    .line 6752
    return-void
.end method

.method private restoreEngineState()V
    .locals 2

    .prologue
    .line 6755
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->mSelLstMode_Org:I

    if-eq v0, v1, :cond_0

    .line 6757
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->mSelLstMode_Org:I

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetSelLstMode(I)V

    .line 6758
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->mSelLstMode_Org:I

    iput v1, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    .line 6766
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->mSpellCheckState_Org:I

    if-eq v0, v1, :cond_1

    .line 6768
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->mSpellCheckState_Org:I

    packed-switch v0, :pswitch_data_0

    .line 6777
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableSpellCheck(Z)V

    .line 6780
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->mSpellCheckState_Org:I

    iput v1, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    .line 6782
    :cond_1
    return-void

    .line 6771
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableSpellCheck(Z)V

    goto :goto_0

    .line 6768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public begin()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6714
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->isActive:Z

    if-eqz v0, :cond_0

    .line 6736
    :goto_0
    return-void

    .line 6717
    :cond_0
    const-string v0, "PostReselect"

    const-string v1, "[begin]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6719
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->backupEngineState()V

    .line 6722
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    if-eq v0, v3, :cond_1

    .line 6724
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetSelLstMode(I)V

    .line 6725
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iput v3, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    .line 6728
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    if-eq v0, v2, :cond_2

    .line 6730
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableSpellCheck(Z)V

    .line 6731
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iput v2, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    .line 6735
    :cond_2
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->isActive:Z

    goto :goto_0
.end method

.method public end()V
    .locals 2

    .prologue
    .line 6740
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->isActive:Z

    if-nez v0, :cond_0

    .line 6747
    :goto_0
    return-void

    .line 6743
    :cond_0
    const-string v0, "PostReselect"

    const-string v1, "[end]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6744
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->restoreEngineState()V

    .line 6746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->isActive:Z

    goto :goto_0
.end method
