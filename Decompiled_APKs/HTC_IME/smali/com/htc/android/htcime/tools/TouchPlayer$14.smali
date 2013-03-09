.class Lcom/htc/android/htcime/tools/TouchPlayer$14;
.super Ljava/lang/Object;
.source "TouchPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/TouchPlayer;->showSpeedDialog(I)V
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
    .line 433
    iput-object p1, p0, Lcom/htc/android/htcime/tools/TouchPlayer$14;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/android/htcime/tools/TouchPlayer$14;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    iget-object v1, p0, Lcom/htc/android/htcime/tools/TouchPlayer$14;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mCurListPosition:I
    invoke-static {v1}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$000(Lcom/htc/android/htcime/tools/TouchPlayer;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/htcime/tools/TouchPlayer$14;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$1100(Lcom/htc/android/htcime/tools/TouchPlayer;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/tools/TouchPlayer$14;->this$0:Lcom/htc/android/htcime/tools/TouchPlayer;

    #getter for: Lcom/htc/android/htcime/tools/TouchPlayer;->mSetSpeedIndex:I
    invoke-static {v3}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$1200(Lcom/htc/android/htcime/tools/TouchPlayer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/android/htcime/tools/TouchPlayer;->updateList(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/tools/TouchPlayer;->access$300(Lcom/htc/android/htcime/tools/TouchPlayer;ILjava/lang/String;)V

    .line 436
    return-void
.end method
