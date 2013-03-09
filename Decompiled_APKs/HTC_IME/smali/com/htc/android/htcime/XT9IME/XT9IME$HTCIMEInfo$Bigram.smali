.class public Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Bigram"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 6678
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6679
    return-void
.end method


# virtual methods
.method public onDelKey()V
    .locals 0

    .prologue
    .line 6698
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeContextBreak()I

    .line 6699
    return-void
.end method

.method public onDpadChangeCursor()V
    .locals 0

    .prologue
    .line 6686
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeContextBreak()I

    .line 6687
    return-void
.end method

.method public onStartOfSentence()V
    .locals 0

    .prologue
    .line 6694
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeContextBreak()I

    .line 6695
    return-void
.end method

.method public onTapChangeCursor()V
    .locals 0

    .prologue
    .line 6682
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeContextBreak()I

    .line 6683
    return-void
.end method

.method public onTextSelection()V
    .locals 0

    .prologue
    .line 6690
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeContextBreak()I

    .line 6691
    return-void
.end method
