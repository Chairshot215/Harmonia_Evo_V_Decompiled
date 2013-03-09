.class Lcom/htc/android/htcime/ui/WordCandsListEX2$1;
.super Ljava/lang/Object;
.source "WordCandsListEX2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/WordCandsListEX2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/WordCandsListEX2;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->access$100(Lcom/htc/android/htcime/ui/WordCandsListEX2;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v1, 0x712

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I
    invoke-static {v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->access$000(Lcom/htc/android/htcime/ui/WordCandsListEX2;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 266
    return-void
.end method
