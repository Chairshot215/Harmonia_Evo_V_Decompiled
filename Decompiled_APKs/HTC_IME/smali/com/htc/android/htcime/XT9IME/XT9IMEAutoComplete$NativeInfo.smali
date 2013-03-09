.class public Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;
.super Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;
.source "XT9IMEAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;)V
    .locals 0
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    return-void
.end method


# virtual methods
.method protected hanldeDBContentSensitive()V
    .locals 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->setOnDiagnoseListener(Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;)V

    .line 1167
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYPrediction:Z

    if-nez v0, :cond_0

    .line 1169
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->mCurrMdbType:I

    .line 1190
    :goto_0
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->mCurrMdbType:I

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetMDB(I)V

    .line 1191
    return-void

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    sparse-switch v0, :sswitch_data_0

    .line 1187
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->mCurrMdbType:I

    goto :goto_0

    .line 1177
    :sswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->mCurrMdbType:I

    .line 1178
    const-string v0, "XT9IMEAutoComplete"

    const-string v1, "[hanldeDBContentSensitive]  set PDSwitch\'s OnDiagnoseListener for Url4PDSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Url4PDSwitch;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    invoke-direct {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Url4PDSwitch;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->setOnDiagnoseListener(Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;)V

    goto :goto_0

    .line 1182
    :sswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->mCurrMdbType:I

    .line 1183
    const-string v0, "XT9IMEAutoComplete"

    const-string v1, "[hanldeDBContentSensitive]  set PDSwitch\'s OnDiagnoseListener for Email4PDSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Email4PDSwitch;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    invoke-direct {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Email4PDSwitch;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->setOnDiagnoseListener(Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;)V

    goto :goto_0

    .line 1173
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x11 -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method protected tuneCoreCheckPoint(Z)V
    .locals 0
    .parameter "isDelete"

    .prologue
    .line 1158
    return-void
.end method
