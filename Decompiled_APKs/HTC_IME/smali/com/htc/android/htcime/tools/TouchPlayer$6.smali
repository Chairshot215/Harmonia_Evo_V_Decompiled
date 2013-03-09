.class Lcom/htc/android/htcime/tools/TouchPlayer$6;
.super Ljava/lang/Object;
.source "TouchPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/TouchPlayer;->showPredictionDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/TouchPlayer;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/TouchPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer$6;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer$6;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #setter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mSetPredictionIndex:I
    invoke-static {v0, p2}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$502(Lcom/htc/android/htcime/tools/TouchPlayer;I)I

    .line 360
    return-void
.end method
