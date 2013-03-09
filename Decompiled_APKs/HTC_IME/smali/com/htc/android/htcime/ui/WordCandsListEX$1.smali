.class Lcom/htc/android/htcime/ui/WordCandsListEX$1;
.super Ljava/lang/Object;
.source "WordCandsListEX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/WordCandsListEX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/WordCandsListEX;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getWCLID()I

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->access$100(Lcom/htc/android/htcime/ui/WordCandsListEX;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v1, 0x712

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I
    invoke-static {v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->access$000(Lcom/htc/android/htcime/ui/WordCandsListEX;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 264
    :cond_0
    return-void
.end method
